package com.ch.shopping3.service;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import com.ch.shopping3.model.Member;
@Component("mv")
public class MemberValidator implements Validator {
	public boolean supports(Class<?> arg0) {
		return false;
	}
	public void validate(Object obj, Errors errors) {
		Member member = (Member)obj;
		if (!StringUtils.hasLength(member.getId())) {
			errors.rejectValue("id", "error.required");
		}
		if (!StringUtils.hasLength(member.getPassword())) {
			errors.rejectValue("password","error.required");
		}
		if (errors.hasErrors()) {
			errors.reject("error.input.member");
		}
	}
}
