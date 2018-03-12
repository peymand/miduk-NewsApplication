package com.nicico.controllers;

import org.apache.log4j.Logger;
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
    final static Logger logger = Logger.getLogger(HomeController.class);

    @ResponseBody
    @RequestMapping("/home")
    public String dummyMethod(){
        logger.info("this is test for log");

        return "Hello Spring mvc!!!";
    }
}
