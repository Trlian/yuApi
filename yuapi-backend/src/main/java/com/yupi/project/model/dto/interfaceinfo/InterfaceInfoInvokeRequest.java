package com.yupi.project.model.dto.interfaceinfo;

import lombok.Data;

import java.io.Serializable;

/**
 * 接口调用请求
 *
 * @TableName product
 */
@Data
public class InterfaceInfoInvokeRequest implements Serializable {

    /**
     * 主键
     */
    private Long id;

    /**
     * 用户请求參數
     */
    private String userRequestParams;

    private static final long serialVersionUID = 1L;
}