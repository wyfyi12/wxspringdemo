package com.controller;

import java.util.List;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.dao.StudentMapper;
import com.entities.StudentEntity;

@RunWith(value = SpringJUnit4ClassRunner.class)  
@ContextConfiguration(value = "test-servlet.xml")  
public class StudentMapperTest {  
      
    @Autowired  
    private ClassMapper classMapper;  
      
    @Autowired  
    private StudentMapper studentMapper;  
      
    @Transactional  
    public void getStudentTest(){  
        StudentEntity entity = studentMapper.getStudent("10000013");  
        System.out.println("" + entity.getStudentID() + entity.getStudentName());  
          
        List<StudentEntity> studentList = studentMapper.getStudentAll();  
        for( StudentEntity entityTemp : studentList){  
            System.out.println(entityTemp.getStudentName());  
        }  
          
    }  
}