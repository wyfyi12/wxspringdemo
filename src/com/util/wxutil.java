package com.util;

import java.io.InputStream;
import java.net.HttpURLConnection;

import net.sf.json.JSONObject;

public class wxutil {
	public static String wxtoken="";
	httpdeal hd=new httpdeal();
	jsondeal jd=new jsondeal();
	public void gettoken(String corpid,String corpsercet) throws Exception{
		String url="https://qyapi.weixin.qq.com/cgi-bin/gettoken?corpid="+corpid+"&corpsecret="+corpsercet;
		HttpURLConnection conn=hd.creattconn(url);
		JSONObject data=new JSONObject();
		InputStream rsin=hd.getHttpResponse(conn, data);
		String rs=hd.getStringFromStream(rsin);
		System.out.println("获取token返回信息为："+rs);
		JSONObject rsjob=jd.getJSONObjectfromString(rs);
		wxtoken=rsjob.getString("access_token");
	}
	
	public String getuid(String code) throws Exception{
		String uid="";
		String url="https://qyapi.weixin.qq.com/cgi-bin/user/getuserinfo?access_token="+wxtoken+"&code="+code;
		HttpURLConnection conn=hd.creattconn(url);
		JSONObject data=new JSONObject();
		InputStream rsin=hd.getHttpResponse(conn, data);
		String rs=hd.getStringFromStream(rsin);
		System.out.println("获取userid返回信息为："+rs);
		JSONObject rsjob=jd.getJSONObjectfromString(rs);
		uid=rsjob.getString("UserId");
		return uid;
	}
}
