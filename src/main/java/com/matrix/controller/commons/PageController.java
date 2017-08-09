package com.matrix.controller.commons;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by yanglele on 2017/8/4.
 */
@Controller
@RequestMapping("/page")
public class PageController {

    @RequestMapping(value = "/toLoginPage.do")
    public String toLoginPage() {
        return "redirect:/login.html";
    }


}
