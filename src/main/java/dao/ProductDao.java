package dao;


import org.apache.ibatis.annotations.Param;
import entity.Product;

import java.util.List;

/**
 * Created by dengry on 2017/4/17.
 */
public interface ProductDao {
    List<Product> getProductsByOption(@Param("name") String name, @Param("isShow") Byte isShow, @Param("brandId") Integer brandId, @Param("offset") int offset, @Param("pageSize") int pageSize);

    int getTotalByOption(@Param("name") String name, @Param("isShow") Byte isShow, @Param("brandId") Integer brandId);



}
