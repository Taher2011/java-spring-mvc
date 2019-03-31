package com.springmvc.demo.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String> {

	private String coursePrefix;

	public void initialize(CourseCode courseCode) {
		this.coursePrefix = courseCode.value();
	}

	@Override
	public boolean isValid(String courseCode, ConstraintValidatorContext constraintValidatorContext) {
		boolean result;
		if (courseCode != null) {
			result = courseCode.startsWith(coursePrefix);
		} else {
			result = true;
		}
		return result;
	}

}
