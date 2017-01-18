package com.util;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class jsondeal {
	public JSONObject getJSONObjectfromString(String str) {
		JSONObject myJsonObject = new JSONObject();
		myJsonObject = JSONObject.fromObject(str);
		return myJsonObject;
	}

	public JSONArray getJSONArrayfromJSONObject(String str, String str1) {
		JSONObject jsonObjSplit = new JSONObject();
		jsonObjSplit = JSONObject.fromObject(str);
		JSONArray ja = jsonObjSplit.getJSONArray(str1);
		return ja;
	}

	public JSONObject getJSONObject(JSONArray ja, int i) {
		JSONObject jo = (JSONObject) ja.get(i);
		return jo;
	}
}
