package com.southwind.controller;

import com.southwind.entity.*;
import com.southwind.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductHandler {

    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CartService cartService;
    @Autowired
    private UserService userService;
    @Autowired
    private AddressService addressService;

    @RequestMapping("/findAllByLevel/{type}/{id}")
    public ModelAndView findAllByLevel(@PathVariable("type") int type,@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("goodsList");
        modelAndView.addObject("list",productService.findAllProductCategory());
        ProductCategory productCategory = new ProductCategory();
        productCategory.setId(id);
        productCategory.setType(type);
        List<Product> products = productService.findAllProductByLevel(productCategory);
        modelAndView.addObject("products",products);
        return modelAndView;
    }

    @RequestMapping("/findById/{id}")
    public ModelAndView findById(@PathVariable("id") int id){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("productDetail");
        modelAndView.addObject("product",productService.findById(id));
        modelAndView.addObject("list",productService.findAllProductCategory());
        return modelAndView;
    }

    @RequestMapping("/addCart/{id}/{price}/{quantity}")
    public String addCart(HttpSession httpSession,@PathVariable("id") int productId,@PathVariable("price")int price,@PathVariable("quantity") int qunatity){
        User user = (User) httpSession.getAttribute("user");
        Cart cart = new Cart();
        Product product = new Product();
        product.setId(productId);
        cart.setProduct(product);
        cart.setQuantity(qunatity);
        cart.setCost(qunatity*price);
        cart.setUser(user);
        cartService.save(cart);
        user.setCarts(cartService.findAllByUserId(user.getId()));
        httpSession.setAttribute("user",user);
        return "redirect:/product/findAllCartByUserId/"+user.getId();
    }

    @RequestMapping("/findAllCartByUserId/{userId}")
    public ModelAndView findAllCartByUserId(@PathVariable int userId){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("settlement1");
        List<Cart> list = cartService.findAllByUserId(userId);
        modelAndView.addObject("list",list);
        return modelAndView;
    }

    @RequestMapping("/removeCart/{id}")
    public String removeCart(@PathVariable("id") int id,HttpSession httpSession){
        cartService.deleteById(id);
        User user = (User) httpSession.getAttribute("user");
        user.setCarts(cartService.findAllByUserId(user.getId()));
        httpSession.setAttribute("user",user);
        return "redirect:/product/findAllCartByUserId/"+user.getId();
    }

    @RequestMapping("/updateCart/{id}/{quantity}/{cost}")
    @ResponseBody
    public String updateCart(@PathVariable("id") int id,@PathVariable("quantity") int quantity,@PathVariable("cost") int cost){
        cartService.update(id, quantity, cost);
        return "success";
    }

    @RequestMapping("/settlement")
    public ModelAndView settlement(HttpSession session){
        User user = (User)session.getAttribute("user");
        user.setCarts(cartService.findAllByUserId(user.getId()));
        session.setAttribute("user",user);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("settlement2");
        List<Cart> list = cartService.findAllByUserId(user.getId());
        modelAndView.addObject("list",list);
        modelAndView.addObject("addressList",userService.findAllAddressByUserId(user.getId()));
        return modelAndView;
    }

    @RequestMapping("/order")
    public ModelAndView order(@RequestParam("selectAddress") String selectAddress,@RequestParam("address") String newAddress,@RequestParam("remark") String remark,@RequestParam("cost") int cost,HttpSession session){
        User user = (User) session.getAttribute("user");
        if(selectAddress.equals("newAddress")){
            selectAddress = newAddress;
            UserAddress userAddress = new UserAddress();
            userAddress.setUserId(user.getId());
            userAddress.setAddress(selectAddress);
            userAddress.setRemark(remark);
            userAddress.setIsDefault(0);
            userAddress.setCreateTime(new Date());
            addressService.save(userAddress);
        }
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("settlement3");
        modelAndView.addObject("order",orderService.addOrder(user.getId(),selectAddress,cost));
        user.setCarts(cartService.findAllByUserId(user.getId()));
        session.setAttribute("user",user);
        return modelAndView;
    }

    @RequestMapping("/search")
    public ModelAndView search(String keyWord){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("goodsList");
        modelAndView.addObject("products",productService.findAllByKeyWord(keyWord));
        modelAndView.addObject("list",productService.findAllProductCategory());
        return modelAndView;
    }
}
