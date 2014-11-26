package com.twpnn.demo.simplemember.controller;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.twpnn.demo.simplemember.service.MemberService;
import com.twpnn.demo.simplemember.model.Member;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/member")
	public ModelAndView index() {
		try {
			ModelAndView mav = new ModelAndView();
			Set<Member> memberList = new HashSet<Member>(
					memberService.findAll());
			mav.setViewName("member"); // jstl will provide url : ../member.jsp
			mav.addObject("memberList", memberList);
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/register")
	public ModelAndView create() {
		ModelAndView model = new ModelAndView();
		model.setViewName("register");
		return model;
	}

	@RequestMapping(value = "/save")
	public String save(Member member) {
		try {
			memberService.save(member);
			return "redirect:/member";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/edit_page", method = RequestMethod.GET)
	public ModelAndView editPage(@RequestParam(value = "id") Long id) {
		try {
			ModelAndView mav = new ModelAndView();
			Member member = memberService.findById(id);
			mav.addObject("member", member);
			mav.setViewName("edit");
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String editMember(Member member) {
		try {
			memberService.update(member);
			return "redirect:/member";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String deleteMember(@RequestParam(value = "id") Long id) {
		try {
			Member member = memberService.findById(id);
			memberService.delete(member);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "error";
	}

	@RequestMapping(value = "/show/{id}", method = RequestMethod.GET)
	public ModelAndView show(@PathVariable(value = "id") Long id) {
		try {
			ModelAndView mav = new ModelAndView();
			Member member = memberService.findById(id);
			mav.addObject("member", member);
			mav.setViewName("show");
			return mav;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}