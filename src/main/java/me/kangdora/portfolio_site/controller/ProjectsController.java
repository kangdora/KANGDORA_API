package me.kangdora.portfolio_site.controller;

import me.kangdora.portfolio_site.dto.ProjectSummeryDto;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/projects")
@RequiredArgsConstructor
public class ProjectsController {

    @GetMapping
    public ResponseEntity<List<ProjectSummeryDto>> getProjects() {
        return ResponseEntity.ok(None);
    }

}
