package me.kangdora.domain.chat.message;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import java.time.LocalDateTime;

@Getter
@RequiredArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "chat_messages")
public class ChatMessage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "chat_room_id", nullable = false)
    private Long chatRoomId;

    @Column(name = "role", nullable = false, length = 20)
    private String role;

    @Column(name = "content", nullable = false, columnDefinition = "TEXT")
    private String content;

    @Column(name = "model", length = 100)
    private String model;

    @Column(name = "token_count")
    private Integer tokenCount;

    @Column(name = "status", length = 20)
    private String status;

    @Column(name = "parent_message_id")
    private Long parentMessageId;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;
}




