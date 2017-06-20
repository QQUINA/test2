package service;


import entity.Brand;
import entity.Color;
import entity.Feature;
import entity.Type;
import org.apache.ibatis.annotations.Param;


import java.util.List;
import java.util.Map;

/**
 * Created by dengry on 2017/5/8.
 */

public interface MyService {

    List<Brand> getAllBrand();

    /**
     * 分页显示品牌
     *
     * @param pageNo 某页
     * @return
     */
    Map<String, Object> getBrands(int pageNo);

    /**
     * 带条件分页显示品牌
     *
     * @param
     * @return
     */
    Map<String, Object> getBrands(String name, Integer is_display, int offset, int limit);

    Map getProductsByOption(String name, Byte isShow, Integer brandId, int offset, int limit);


    void delBrandById(int id);

    /**
     * 批量删除
     *
     * @param ids
     */
    void delBrands(int[] ids);


    void saveBrand(Brand brand);

    void updateBrand(Brand brand);

    Brand getBrandById(int id);

    /**
     * 查询parent不是null的所有颜色
     *
     * @return
     */
    List<Color> getColors();

    List<Feature> getAllFeature();

    /**
     * 根据isDisplay查询Type
     * @param isDisplay   isDisplay=1
     * @return
     */
    List<Type> getTypes(@Param("isDisplay") Byte isDisplay);
}
