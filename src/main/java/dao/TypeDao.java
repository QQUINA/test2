package dao;

import entity.Type;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by dengry on 2017/4/18.
 */
public interface TypeDao {
    /**
     * 根据isDisplay查询Type
     * @param isDisplay   isDisplay=1
     * @return
     */
    List<Type> getTypes(@Param("isDisplay") Byte isDisplay);
}
