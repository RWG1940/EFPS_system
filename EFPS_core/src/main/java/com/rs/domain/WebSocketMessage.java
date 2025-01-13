package com.rs.domain;

import lombok.Data;

/**
 * @Description: @Author: RWG @Date: 2024/12/21:17:29
 */
@Data
public class WebSocketMessage {
  private int type;// 1 系统响应 2 群聊消息 3 私聊消息 4 群聊通知 5 私聊通知 6 群聊文件 7 私聊文件
  private int status;// 1 成功 2 失败
  private String message;// 消息内容
  private String sender;// 发送者
  private long timestamp;// 时间戳

  // 构造方法
  public WebSocketMessage(int type,int status, String message, String sender, long timestamp) {
    this.type = type;
    this.status = status;
    this.message = message;
    this.sender = sender;
    this.timestamp = timestamp;
  }


}
