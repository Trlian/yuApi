package com.yupi.yuapiinterface.aop;

import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.annotation.Resource;

/**
 * 调用次数切面
 */
@RestControllerAdvice
public class InvokeCountAOP {

//    @Resource
//    private UserInterfaceService userInterfaceService;

    // 伪代码
    // 定义切面触发的时机（什么时候执行什么方法） controller 接口方法执行后，执行下述方法
//     public void doInvokeCount() {
//         //调用方法
//         object.proceed();
//         //调用成功后，次数 + 1
//         userInterfaceService
//     }
}
