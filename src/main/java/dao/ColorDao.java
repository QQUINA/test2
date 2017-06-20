package dao;

import entity.Color;

import java.util.List;

/**
 * Created by dengry on 2017/4/18.
 */
public interface ColorDao {
    /**
     * 查询parent不是null的所有颜色
     *
     * @return
     */
    List<Color> getColors();
}
