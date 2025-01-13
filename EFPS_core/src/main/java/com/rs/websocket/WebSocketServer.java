package com.rs.websocket;

import com.alibaba.fastjson.JSON;
import com.rs.domain.WebSocketMessage;
import io.swagger.annotations.Api;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.websocket.*;
import javax.websocket.server.PathParam;
import javax.websocket.server.ServerEndpoint;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

@Component
@Slf4j
@ServerEndpoint("/websocket/{sid}")
@Api(tags = "WebSocket 服务器")
public class WebSocketServer {

  // 在线连接数
  private static AtomicInteger onlineSessionClientCount = new AtomicInteger(0);

  // 存储所有客户端连接
  private static Map<String, Session> onlineSessionClientMap = new ConcurrentHashMap<>();

  // 当前连接的 SID
  private String sid;


  @OnOpen
  public void onOpen(@PathParam("sid") String sid, Session session) {
    this.sid = sid;
    onlineSessionClientMap.put(sid, session);
    onlineSessionClientCount.incrementAndGet();
    log.info(
        "连接建立成功：sid = {}, session_id = {}, 当前在线人数：{}",
        sid,
        session.getId(),
        onlineSessionClientCount.get());
    sendToAll(new WebSocketMessage(1, 1, "有人上线啦", sid, System.currentTimeMillis()));
    sendToOne(sid, new WebSocketMessage(1, 1, "连接成功", sid, System.currentTimeMillis()));
  }

  @OnClose
  public void onClose(@PathParam("sid") String sid) {
    onlineSessionClientMap.remove(sid);
    onlineSessionClientCount.decrementAndGet();
    log.info("连接关闭：sid = {}, 当前在线人数：{}", sid, onlineSessionClientCount.get());
    sendToAll(new WebSocketMessage(1, 1, "有人下线啦", sid, System.currentTimeMillis()));
  }

  @OnMessage
  public void onMessage(String message) {
    log.info("收到消息：sid = {}, message = {}", sid, message);
    sendToAll(new WebSocketMessage(1, 1, message, sid, System.currentTimeMillis()));
  }

  @OnError
  public void onError(Session session, Throwable error) {
    log.error("发生错误：sid = {}, 错误信息：{}", sid, error.getMessage());
    error.printStackTrace();
  }

  public void sendToAll(WebSocketMessage message) {
    onlineSessionClientMap.forEach(
        (onlineSid, toSession) -> {
          if (toSession.isOpen()) {
            String messageJson = JSON.toJSONString(message);
            toSession.getAsyncRemote().sendText(messageJson);
            log.info("群发消息：toSid = {}, message = {}", onlineSid, messageJson);
          }
        });
  }

  private void sendToOne(String toSid, WebSocketMessage message) {
    Session toSession = onlineSessionClientMap.get(toSid);
    if (toSession != null && toSession.isOpen()) {
      String messageJson = JSON.toJSONString(message);
      toSession.getAsyncRemote().sendText(messageJson);
      log.info("单发消息：toSid = {}, message = {}", toSid, messageJson);
    }
  }
}
