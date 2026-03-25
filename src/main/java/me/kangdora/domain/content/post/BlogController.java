package me.kangdora.domain.content.post;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/api/blog")
@RequiredArgsConstructor
@RestController
public class BlogController {

    @PostMapping("/post/{postId}")
    public void post(@PathVariable int postId) {
    }

}
