package com.yupi.project.model.dto.userInterfaceInfo;


import com.yupi.project.common.PageRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 查询请求
 *
 * @author yupi
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class UserInterfaceInfoQueryRequest extends PageRequest implements Serializable {

    /**
     * 主键
     */
    private Long id;

    /**
     * 调用用户 id
     */
    private String userId;

    /**
     * 接口 id
     */
    private String interfaceInfoId;

    /**
     * 总调用次数
     */
    private String totalNum;

    /**
     * 剩余调用次数
     */
    private String leftNum;

    /**
     * 0-正常，1-禁用
     */
    private Integer status;

}