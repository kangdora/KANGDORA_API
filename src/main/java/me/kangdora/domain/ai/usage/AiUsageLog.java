package me.kangdora.domain.ai.usage;

import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import java.time.LocalDateTime;

@Getter
@RequiredArgsConstructor(access = AccessLevel.PROTECTED)
@Entity
@Table(name = "ai_usage_logs")
public class AiUsageLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "feature", nullable = false, length = 100)
    private String feature;

    @Column(name = "input_hash", nullable = false, length = 255)
    private String inputHash;

    @Column(name = "ip_hash", nullable = false, length = 255)
    private String ipHash;

    @Column(name = "created_at", nullable = false)
    private LocalDateTime createdAt;
}




