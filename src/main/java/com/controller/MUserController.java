package com.controller;



import java.io.File;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.commons.logging.Log;            
import org.apache.commons.logging.LogFactory;         
 

@Controller
@RequestMapping("/d")
public class MUserController {

	Log logger = LogFactory.getLog(getClass());
	
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
		logger.info(url);
		logger.debug(url);
		Thread thread = new Thread(new MusicImplements(url));
		thread.start();
        retMap.put("stat", "suc");
		return retMap;
	}
	
	@RequestMapping(value="/getFileList")
	public String getFileList(HttpServletRequest request) {
		
		
		File file = new File("/usr/share/tomcat/webapps/downyoutube/video");
		File[] files = file.listFiles();
		request.setAttribute("files", files);
		return "index";  
	}
	
	@RequestMapping(value="/clean")
	public String clean(HttpServletRequest request) {
		
		File file = new File("/usr/share/tomcat/webapps/downyoutube/video");
		File[] files = file.listFiles();
		for(int i=0;i<files.length;i++){
			files[i].delete();
		}
		return "index";  
	}
 
}











class MusicImplements implements Runnable{  
	private String durl = "";
	public MusicImplements(String url) {
		this.durl = url;
	}
	
    public void run() {  
        try {
//        	Process pro = Runtime.getRuntime().exec("youtube-dl -o /usr/share/tomcat/webapps/downyoutube/video/%(title)s-%(id)s.%(ext)s "+durl);
        	Process pro = Runtime.getRuntime().exec("youtube-dl -o /usr/share/tomcat/webapps/downyoutube/video/-%(id)s.%(ext)s "+durl);
        	pro.waitFor();
        } catch ( Exception e) {
            e.printStackTrace();
        }
          
    }  
}  
