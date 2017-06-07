package com.mvc.controller;


import com.mvc.model.TestModel;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by Złoty on 2017-04-08.
 */
@Controller
public class TestController {
    protected Logger logger = Logger.getLogger(getClass());

    @RequestMapping("/test")
    public ModelAndView test(){
        logger.debug("UserController.test()");

        ModelAndView model = new ModelAndView("test");

        TestModel t = new TestModel();
        t.setName("TEST");

        model.addObject("test", t);

        return model;
    }

    /*@RequestMapping("/index")
    public ModelAndView test2(){
        ModelAndView model = new ModelAndView("index");

        return model;
    }*/

}