package com.yupi.yuapiinterface.controller;

import com.yupi.yuapiclientsdk.model.User;
import com.yupi.yuapiclientsdk.utils.SignUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * 名称 API
 *
 * @author yupi
 */
@RestController
@RequestMapping("/")
public class NameController {

    @GetMapping("/name")
    public String getNameByGet(String name, HttpServletRequest request) {

        System.out.println(request.getHeader("yupi"));
        return "GET 你的名字是" +  name;
    }

    @PostMapping("/")
    public String getNameByPost(@RequestParam String name) {
        // 调用成功后，调用次数 + 1
        return "POST 你的名字是" + name;
    }

    @PostMapping("/user")
    public String getUsernameByPost(@RequestBody User user, HttpServletRequest request) {
        String accessKey = request.getHeader("accessKey");
        String secretKey = request.getHeader("secretKey");
        String nonce = request.getHeader("nonce");
        String timestamp = request.getHeader("timestamp");
        String sign = request.getHeader("sign");
        String body = request.getHeader("body");

        // todo 实际情况应该是去数据库中查是否已分配给用户
        if (!accessKey.equals("yupi")) {
            throw new RuntimeException("无权限");
        }
        if (Long.parseLong(nonce) > 10000) {
            throw new RuntimeException("无权限");
        }

        // todo 时间和当前时间不能超过5分钟
//        if (timestamp)
//

        // todo 实际情况中是从数据库中查出 secretKey
        String serverSign = SignUtils.getSign(body, "abcdefg");
        if (!sign.equals(serverSign)) {
            throw new RuntimeException("无权限");
        }


        String result = "POST 你的名字是" + user.getUsername();

        // 调用成功后，调用次数 + 1
        return result;
    }

}
