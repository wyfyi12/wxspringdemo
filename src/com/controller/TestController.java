package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.StudentMapper;
import com.entities.StudentEntity;

@Controller  
public class TestController {  
  
    @Autowired  
    private StudentMapper studentMapper;  
      
    @RequestMapping(value = "index.do")  
    public void indexPage() {     
        StudentEntity entity = studentMapper.getStudent("123456");  
        System.out.println("name：" + entity.getStudentName());  
    }     
}  
