package dao;

import entity.Brand;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by dengry on 2017/5/8.
 */
public interface BrandDao {
    List<Brand> getAll();

    /**
     * 查询记录条数
     *
     * @return
     */
    int getTotal();

    /**
     * 组合条件查询记录条数
     * @param name
     * @param is_display
     * @return
     */
    int getTotalByOptions(@Param("name") String name, @Param("is_display") Integer is_display);

    /**
     * 查询从第几条到第几条的品牌集合
     *
     * @param offset
     * @param limit
     * @return
     */
    List<Brand> getBrands(@Param("offset") int offset, @Param("limit") int limit);

    /**
     * 组合条件查询从第几条到第几条的品牌集合
     *
     * @param offset
     * @param limit
     * @return
     */
    List<Brand> getBrandsByOptions(@Param("name") String name, @Param("is_display") Integer is_display, @Param("offset") int offset, @Param("limit") int limit);



    void delBrandById(@Param("brandId") int brandId);

    void delByIds(int[] ids);


    void saveBrand(Brand brand);
    void updateBrand(Brand brand);


    Brand getBrandById(@Param("id") int id);
}
