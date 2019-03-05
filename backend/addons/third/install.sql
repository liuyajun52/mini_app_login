DROP TABLE IF EXISTS `__PREFIX__third`;
CREATE TABLE `__PREFIX__third` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `platform` varchar(30) NOT NULL DEFAULT '' COMMENT '第三方应用',
  `appid` varchar(100) NOT NULL DEFAULT '' COMMENT '第三方appid',
  `openid` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方唯一ID',
  `unionid` varchar(100) NOT NULL DEFAULT '' COMMENT '微信开放平台绑定时用户唯一标示',
  `openname` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方会员昵称',
  `access_token` varchar(255) NOT NULL DEFAULT '' COMMENT 'AccessToken',
  `refresh_token` varchar(255) NOT NULL DEFAULT 'RefreshToken',
  `session_key` varchar(255) NOT NULL DEFAULT '' COMMENT '微信小程序会话秘钥',
  `watermark` text NOT NULL COMMENT '第三方watermark',
  `expires_in` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '有效期',
  `createtime` int(10) unsigned DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `logintime` int(10) unsigned DEFAULT NULL COMMENT '登录时间',
  `expiretime` int(10) unsigned DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `platform` (`platform`,`openid`),
  KEY `user_id` (`user_id`,`platform`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='第三方登录表';