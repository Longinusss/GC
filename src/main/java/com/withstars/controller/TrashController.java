package com.withstars.controller;

import com.github.pagehelper.PageInfo;
import com.withstars.domain.Trash;
import com.withstars.service.TrashService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("trash")
public class TrashController {
    @Autowired
    TrashService trashService;
    @RequestMapping("findbyType.do")
    public ModelAndView findbyType(@RequestParam(defaultValue="1") int page, @RequestParam(defaultValue="5") int size,@RequestParam(defaultValue="1")int type) {
        List<Trash> trashes=trashService.findbyType(page,size,type);
        ModelAndView mv=new ModelAndView();
        PageInfo pageInfo=new PageInfo(trashes);
        mv.addObject("pageInfo",pageInfo);
        mv.addObject("ttype",type);
        mv.setViewName("/pages/tupu.jsp");
        return mv;
    }
    @RequestMapping("/searchRubbish.do")
    @ResponseBody
    public Map<String, Object> getHotTopic(String name) throws UnsupportedEncodingException {
        // String rubbishName = URLDecoder.decode(name, "UTF-8");
        Map<String, Object> result = new HashMap<>();
        List<Trash> rubbishInfos = trashService.searchByName(name);
        System.out.println(rubbishInfos);
        result.put("rubbishInfos", rubbishInfos);
        return result;
    }

}
