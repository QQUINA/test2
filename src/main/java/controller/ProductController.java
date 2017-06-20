package controller;

import entity.Brand;
import entity.Color;
import entity.Feature;
import entity.Type;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.MyService;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by dengry on 2017/5/11.
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    MyService myService;

    @RequestMapping("/toList")
    public String list(Map map) {
        //查询所有品牌
        List<Brand> brands = myService.getAllBrand();
        map.put("brands", brands);
        return "product/list";
    }

    @ResponseBody
    @RequestMapping("/list")
    public Map list(String name, Byte isShow, Integer brandId, int offset, int limit) {
        Map data = myService.getProductsByOption(name, isShow, brandId, offset, limit);
        return data;
    }

    @RequestMapping("/toAdd")
    public String toAdd(Map map) {
        List<Feature> features = myService.getAllFeature();
        List<Color> colors = myService.getColors();
        List<Brand> brands = myService.getAllBrand();
        List<Type> types = myService.getTypes((byte) 1);
        map.put("features", features);
        map.put("types", types);
        map.put("colors", colors);
        map.put("brands", brands);

        return "product/add";
    }
}
