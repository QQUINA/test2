package service;

import entity.Brand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by dengry on 2017/5/8.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:beans.xml")
public class MyServiceTest {

    @Resource
    MyService myService;


    @Test
    public void getAllBrand() {
        List<Brand> brands = myService.getAllBrand();
        System.out.println(brands);
    }


}
