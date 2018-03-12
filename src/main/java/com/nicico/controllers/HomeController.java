package com.nicico.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/* com.nicico.controllers
@Author:Peyman
Date: 3/12/2018
Time: 10:40 AM
Year: 2018
*/
@Controller
public class HomeController {

    @RequestMapping("/")
    public String homeMethod(){
        return "login";
    }

    @ResponseBody
    @RequestMapping("/home")
    public String dummyMethod() {
        return "Hello Spring mvc!!!";
    }
}
