package controller;

/**
 * Created by Administrator on 2017/6/20.
 */

import org.springframework.stereotype.Controller;

@Controller
public class YMController {
    public String ym(){
        System.out.println("ym");
        return "ym";
    }
}
