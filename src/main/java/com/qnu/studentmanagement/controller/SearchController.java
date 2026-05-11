package com.qnu.studentmanagement.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qnu.studentmanagement.dao.RegistrationDAO;

@Controller
@RequestMapping("/search")
public class SearchController {
	@Autowired
	private RegistrationDAO dao;

	@GetMapping("/basic")
	public String basicSearch(@RequestParam(value = "q", required = false) String q, Model model) {
		if (q != null && !q.isEmpty()) {
			model.addAttribute("results", dao.searchBasic(q));
		}
		return "search-basic";
	}

	@GetMapping("/detail")
	public String detailSearch(@RequestParam(value = "q", required = false) String q, Model model) {
		if (q != null && !q.isEmpty()) {
			model.addAttribute("results", dao.searchDetail(q));
		}
		return "search-detail";
	}
}