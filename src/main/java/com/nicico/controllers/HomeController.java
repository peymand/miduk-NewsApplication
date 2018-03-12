package com.nicico.controllers;

import com.nicico.models.New;
import com.nicico.models.UserInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/* com.nicico.controllers
@Author:Peyman
Date: 3/12/2018
Time: 10:40 AM
Year: 2018
*/
@Controller
public class HomeController implements ServletContextAware{



    private ServletContext servletContext;

    public HomeController(){

    }

    @RequestMapping("/")
    public String homeMethod(Model model){
        model.addAttribute("userInfo",new UserInfo());
        return "login";
    }

    @RequestMapping(value = "/addNews", method = RequestMethod.POST)
    public String addNew(New aNew,Model model){
        List<New> news = (List<New>) servletContext.getAttribute("news");
        news.add(aNew);
        servletContext.setAttribute("news",news);
        model.addAttribute("news",news);
        return "/admin/listNews";
    }

    @RequestMapping("/checkLogin")
    public String checkLoginMethod(@Valid @ModelAttribute("userInfo") UserInfo info, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "login";

        }
        return "admin/addnews";
    }
    @ResponseBody
    @RequestMapping("/home")
    public String dummyMethod() {
        return "Hello Spring mvc!!!";
    }

    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
        List<New> news = new ArrayList<New>();
        servletContext.setAttribute("news",news);
    }
}
