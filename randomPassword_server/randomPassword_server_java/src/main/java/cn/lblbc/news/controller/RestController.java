package cn.lblbc.news.controller;

import cn.lblbc.base.Resp;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
@org.springframework.web.bind.annotation.RestController
@RequestMapping("/tools")
public class RestController {

    @GetMapping("randomPassword")
    public Resp<String> getRandomPassword() {
        Resp<String> resp = new Resp<>();
        resp.setData(Utils.getRandomPassword());
        return resp;
    }


}
