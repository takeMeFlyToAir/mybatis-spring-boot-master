package tk.mybatis.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by sjgtw-zzr on 2017/8/29.
 */
@Controller
@RequestMapping("/echarts")
public class EcharsController {

    @RequestMapping("first")
    public String first(){
        return "/echarts/first";
    }
}
