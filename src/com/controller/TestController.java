package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.StudentMapper;
import com.dao.TokenMapper;
import com.entities.StudentEntity;
import com.entities.TokenEntity;
import com.util.Getdata;
import com.util.wxutil;

@Controller
public class TestController {

	@Autowired(required = false)
	private StudentMapper studentMapper;
	@Autowired(required = false)
	private TokenMapper tokenMapper;

	@RequestMapping(value = "index.do")
	public void indexPage() {
		StudentEntity entity = studentMapper.getStudent("123456");
		System.out.println("name：" + entity.getStudentName());
	}

	@RequestMapping(value = "muiindex")
	public void muiindexPage() throws Exception {
		TokenEntity entity = new TokenEntity();
		wxutil wu=new wxutil();
		Getdata gd=new Getdata();
		gd.getdata();
		wu.gettoken(gd.corpid, gd.corpsercet);
		String token=wxutil.wxtoken;
		String time=gd.gettime();
		entity.setTime(time);
		entity.setType("wxtoken");
		entity.setWxtoken(token);
		int i = tokenMapper.insertToken(entity);
		System.out.println(i);
	}
}
