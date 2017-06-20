package service;

import dao.*;

import entity.*;

import org.springframework.stereotype.Service;
import utils.Constant;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by dengry on 2017/5/9.
 */
@Service
public class MyServiceImpl implements MyService {
    @Resource
    BrandDao brandDao;
    @Resource
    ProductDao productDao;
    @Resource
    ColorDao colorDao;
    @Resource
    FeatureDao featureDao;
    @Resource
    TypeDao typeDao;


    @Override
    public List<Brand> getAllBrand() {
        return brandDao.getAll();
    }

    @Override
    public Map<String, Object> getBrands(int pageNo) {
        int total = brandDao.getTotal();//总记录数
        int totalPages = (total + Constant.PAGE_SIZE - 1) / Constant.PAGE_SIZE;//总页数
        int offset = (pageNo - 1) * Constant.PAGE_SIZE;//根据当前页算从第几条开始查
        List<Brand> brands = brandDao.getBrands(offset, Constant.PAGE_SIZE);

        Map<String, Object> result = new HashMap<>();
        result.put("totalPages", totalPages);
        result.put("brands", brands);
        return result;
    }


    @Override
    public Map<String, Object> getBrands(String name, Integer is_display, int offset, int limit) {
        int total = brandDao.getTotalByOptions(name, is_display);//总记录数

        List<Brand> brands = brandDao.getBrandsByOptions(name, is_display, offset, limit);

        Map<String, Object> result = new HashMap<>();
        //bootstrap table要求的变量 total:总记录数  rows:当前页的结果集合
        result.put("total", total);
        result.put("rows", brands);
        return result;
    }

    @Override
    public void delBrandById(int id) {
        brandDao.delBrandById(id);
    }

    @Override
    public void delBrands(int[] ids) {
        brandDao.delByIds(ids);
    }

    @Override
    public void saveBrand(Brand brand) {
        brandDao.saveBrand(brand);
    }

    @Override
    public Brand getBrandById(int id) {
        return brandDao.getBrandById(id);
    }

    @Override
    public void updateBrand(Brand brand) {
        brandDao.updateBrand(brand);
    }

    @Override
    public Map getProductsByOption(String name, Byte isShow, Integer brandId, int offset, int limit) {
        List<Product> products = productDao.getProductsByOption(name, isShow, brandId, offset, limit);
        int total = productDao.getTotalByOption(name, isShow, brandId);
        Map map = new HashMap();
        map.put("total", total);
        map.put("rows", products);
        return map;
    }

    @Override
    public List<Color> getColors() {
        return colorDao.getColors();
    }

    @Override
    public List<Feature> getAllFeature() {
        return featureDao.getAllFeature();
    }

    @Override
    public List<Type> getTypes(Byte isDisplay) {
        return typeDao.getTypes(isDisplay);
    }
}
