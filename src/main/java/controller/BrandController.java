package controller;


import entity.Brand;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.MyService;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;


/**
 * 控制器
 * Created by dengry on 2017/5/5.
 */
@Controller
@RequestMapping("/brand")
public class BrandController {

    @Resource
    private MyService myService;

    //跳转到品牌列表页面
    @RequestMapping("/toList")
    public String toList() {
        return "brand/list";
    }


    //取数据，填充页面上的table表格---ajax局部刷新
    @ResponseBody
    @RequestMapping("/list")
    public Map<String, Object> list(int offset, int limit, String name, Integer isDisplay) {
        Map<String, Object> result = myService.getBrands(name, isDisplay, offset, limit);
        return result;
    }

    //若响应回来的是数据(json,xml),必须new new HashMap<>(),否则前台数据拿不到
    @ResponseBody
    @RequestMapping("/del")  //String 1,2,9
    public Map del(int[] ids) {
        Map<String, Object> result = new HashMap<>();
        try {
            myService.delBrands(ids);
            result.put("success", true);
        } catch (Exception e) {
            result.put("success", false);
        }

        return result;
    }

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "brand/add2";
    }


    @RequestMapping("/add")
    public String add(Brand brand) {
        myService.saveBrand(brand);
        //转发 forward   重定向 redirect
        return "redirect:/brand/toList";
    }


    @RequestMapping("/toUpdate")
    public String toUpdate(int id, Map map) {
        Brand brand = myService.getBrandById(id);
        map.put("brand", brand);
        return "brand/update";
    }


    @RequestMapping("/update")
    public String update(Brand brand) {
        myService.updateBrand(brand);
        return "forward:/brand/toList";
    }

}
