CREATE TABLE `projects` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NULL,
  `status` VARCHAR(20) NOT NULL,
  `tech_stack` TEXT NULL,
  `github_url` VARCHAR(500) NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_PROJECTS` PRIMARY KEY (`id`)
);

CREATE TABLE `posts` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(20) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `slug` VARCHAR(255) NOT NULL,
  `content` TEXT NOT NULL,
  `tags` TEXT NULL,
  `views` INT NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_POSTS` PRIMARY KEY (`id`),
  CONSTRAINT `UK_POSTS_SLUG` UNIQUE (`slug`)
);

CREATE TABLE `ai_usage_logs` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `feature` VARCHAR(100) NOT NULL,
  `input_hash` VARCHAR(255) NOT NULL,
  `ip_hash` VARCHAR(255) NOT NULL,
  `created_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_AI_USAGE_LOGS` PRIMARY KEY (`id`)
);

CREATE TABLE `code_snippets` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NOT NULL,
  `code` TEXT NOT NULL,
  `language` VARCHAR(50) NOT NULL DEFAULT 'python',
  `created_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_CODE_SNIPPETS` PRIMARY KEY (`id`)
);

CREATE TABLE `ip_blocklist` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `ip_hash` VARCHAR(255) NOT NULL,
  `reason` TEXT NULL,
  `blocked_at` TIMESTAMP NOT NULL,
  `expires_at` TIMESTAMP NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_IP_BLOCKLIST` PRIMARY KEY (`id`)
);

CREATE TABLE `chat_rooms` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(255) NULL,
  `user_id` BIGINT NULL,
  `session_key` VARCHAR(255) NULL,
  `created_at` TIMESTAMP NOT NULL,
  `updated_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_CHAT_ROOMS` PRIMARY KEY (`id`)
);

CREATE TABLE `chat_messages` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `chat_room_id` BIGINT NOT NULL,
  `role` VARCHAR(20) NOT NULL,
  `content` TEXT NOT NULL,
  `model` VARCHAR(100) NULL,
  `token_count` INT NULL,
  `status` VARCHAR(20) NULL DEFAULT 'done',
  `parent_message_id` BIGINT NULL,
  `created_at` TIMESTAMP NOT NULL,
  CONSTRAINT `PK_CHAT_MESSAGES` PRIMARY KEY (`id`),
  CONSTRAINT `FK_CHAT_MESSAGES_ROOM` FOREIGN KEY (`chat_room_id`)
    REFERENCES `chat_rooms`(`id`)
);
