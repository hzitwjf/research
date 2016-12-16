package testresearch;

import com.hzit.StartSpring;
import com.hzit.dao.entity.Vegetable;
import com.hzit.services.VegetableServices;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wjf13 on 2016/12/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(StartSpring.class)
public class TestVegetableServicesImpl {
    @Autowired
    private VegetableServices vegetableServices;
    @Test
    public void findAll(){
        List<Vegetable> vegetableList=vegetableServices.findAllVegetable();
       // vegetableList.forEach(vegetable -> System.out.println(vegetable.toString()));
        for (Vegetable vegetable : vegetableList){
            System.out.println(vegetable.getVName());
        }
    }
}
