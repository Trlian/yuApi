use yuapi;
-- 接口信息
create table if not exists yuapi.`interface_info`
(
    `id` bigint not null auto_increment comment '主键' primary key,
    `name` varchar(256) not null comment '用户名',
    `description` varchar(256) null comment '描述',
    `url` varchar(512) not null comment '接口地址',
    `requestParams` text not null comment '请求参数',
    `requestHeader` text null comment '请求头',
    `responseHeader` text null comment '响应头',
    `status` int default 0 not null comment '接口状态（0 - 关闭，1 - 开启）',
    `method` varchar(256) not null comment '请求类型',
    `userId` bigint not null comment '创建人',
    `createTime` datetime default CURRENT_TIMESTAMP not null comment '创建时间',
    `updateTime` datetime default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间',
    `isDelete` tinyint default 0 not null comment '是否删除(0-未删, 1-已删)'
    ) comment '接口信息';

insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('戴昊然', '任驰', 'www.clelia-beatty.net', '夏立轩', '杜晓啸', 0, '薛鹭洋', 1);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('戴嘉熙', '邱展鹏', 'www.reva-harris.io', '沈煜祺', '徐修杰', 0, '曹语堂', 618275463);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('白晋鹏', '江鸿煊', 'www.lauralee-wolff.co', '林鹏涛', '梁晓博', 0, '蔡语堂', 141259182);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('卢伟诚', '程浩然', 'www.guillermo-deckow.co', '夏梓晨', '廖远航', 0, '赵振家', 603115390);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('薛远航', '魏涛', 'www.morton-metz.biz', '谭绍齐', '黎思远', 0, '石熠彤', 8412253480);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏俊驰', '冯博超', 'www.lacy-crist.name', '罗绍齐', '傅耀杰', 0, '谭哲瀚', 893298038);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('罗志泽', '薛楷瑞', 'www.cristobal-bauch.biz', '卢建辉', '范展鹏', 0, '雷越泽', 7319);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('雷哲瀚', '覃烨霖', 'www.kylie-schmitt.io', '许思聪', '龚智渊', 0, '沈靖琪', 16405784);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('宋晟睿', '孙天宇', 'www.kam-frami.org', '徐梓晨', '董乐驹', 0, '江峻熙', 1882798319);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('夏修洁', '段聪健', 'www.jarred-nolan.com', '谭浩然', '吴浩轩', 0, '陆志泽', 52865);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('马嘉熙', '唐耀杰', 'www.lanny-haag.biz', '许擎宇', '史修洁', 0, '戴明哲', 3);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('苏子骞', '吕浩轩', 'www.douglas-denesik.info', '毛鑫磊', '萧思源', 0, '曾昊天', 922);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('赵烨磊', '陈苑博', 'www.jessie-quitzon.com', '彭靖琪', '丁耀杰', 0, '吕旭尧', 93923431);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('曾梓晨', '何鹏煊', 'www.jarod-sawayn.info', '高晓博', '郝立诚', 0, '黎立轩', 2);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('尹荣轩', '韩建辉', 'www.graham-luettgen.net', '史峻熙', '武苑博', 0, '罗苑博', 16169);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('胡旭尧', '熊靖琪', 'www.renee-koch.co', '陈志强', '史烨磊', 0, '龚越彬', 5);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('曾峻熙', '傅笑愚', 'www.dortha-donnelly.biz', '洪乐驹', '田天磊', 0, '黄明辉', 3341820);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('贺弘文', '林君浩', 'www.kerstin-kautzer.co', '姜擎苍', '萧弘文', 0, '龚靖琪', 6);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('胡绍辉', '于思', 'www.chasity-kunde.co', '薛果', '曹笑愚', 0, '叶天宇', 41);
insert into yuapi.`interface_info` (`name`, `description`, `url`, `requestHeader`, `responseHeader`, `status`, `method`, `userId`) values ('林炎彬', '田立诚', 'www.francisco-dare.net', '高黎昕', '龙浩宇', 0, '龙越彬', 47);