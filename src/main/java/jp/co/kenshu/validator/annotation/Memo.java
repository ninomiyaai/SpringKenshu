package jp.co.kenshu.validator.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

import jp.co.kenshu.validator.MemoValidator;

// JavaDoc によってドキュメント化
@Documented
// Validator を行うクラスを指定
@Constraint(validatedBy = MemoValidator.class)
// アノテーションが何に対して有効なのか指定
@Target({ ElementType.METHOD, ElementType.FIELD })
// アノテーションの有効範囲を指定
@Retention(RetentionPolicy.RUNTIME)

// @interface...独自アノテーションの作成に必要
public @interface Memo {

	String message() default "Please input a memo.";

	int value();

	Class<?>[] groups() default {};

	Class<? extends Payload>[] payload() default {};

}
