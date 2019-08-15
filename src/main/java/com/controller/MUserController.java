package com.controller;



import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

 

@Controller
@RequestMapping("/d")
public class MUserController {

 
	
	@RequestMapping(value="/index")
	public String index(HttpServletRequest request) {
		request.setAttribute("userlist", "");
		return "index";
	}
	
	@ResponseBody
	@RequestMapping(value="/down",method = RequestMethod.POST)
	public Map<String,Object> down(HttpServletRequest request) {
		Map<String,Object> retMap = new HashMap<String,Object>();
		
		String url = request.getParameter("url");
		System.out.println(url);
        try {
        	Process pro = Runtime.getRuntime().exec("youtube-dl -o '/usr/share/tomcat/webapps/downyoutube/video/%(title)s.%(ext)s' "+url);
            pro.waitFor();
        } catch ( Exception e) {
            e.printStackTrace();
            retMap.put("stat", "err");
        }
		//request.setAttribute("userlist", "");
        retMap.put("stat", "suc");
		return retMap;
	}
 
}
