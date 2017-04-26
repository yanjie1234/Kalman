package com.test.springmvc.action;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/play")
public class VideoPlayController {
	@RequestMapping("/video")
	public String playVideo(String path,Map<String,Object> map) {
		map.put("path",path);
		return "videoplayer";
	}
}
