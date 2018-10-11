package com.pdsu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pdsu.entities.User;
/**
 * Spring MVC ʹ�� @RequestMapping ע��Ϊ������ָ�����Դ�����Щ URL ����
	�ڿ��������ඨ�弰�������崦���ɱ�ע
	�ඨ�崦���ṩ����������ӳ����Ϣ���൱�ڵ�ǰ WEB Ӧ�õĸ�Ŀ¼
	���������ṩ��һ����ϸ��ӳ����Ϣ��������ඨ�崦�� URL
	�� �ඨ�崦δ��ע @RequestMapping���򷽷�����ǵ� URL �൱�ڵ�ǰ WEB Ӧ�õĸ�Ŀ¼
	�� �ඨ�崦��ע @RequestMapping���򷽷�����ǵ� URL ������ඨ�崦��@RequestMapping���Ե�
 * @author Acer
 *
 */
@RequestMapping("/user")
@Controller
public class UserController {
	private static final String sucess="success";
	//Rest���
	/**
	 * post:����
	 * put:�޸�
	 * get:��ѯ
	 * delete:ɾ��
	 * @return
	 */
	/**
	 * @RequestMappingע�����ӳ�������URL
	 * RequestMappingֱ�����ڷ�����ʱע��λ�ã�1���ϣ�/��Ŀ�ĸ�Ŀ¼��http://localhost:8080/springmvc-01
	 * �������ĸ�Ŀ¼��http://localhost:8080
	 * 2�����ϣ�����Ҳ����RequestMappingע�⣬��ô���ע���ǻ������ϵ�RequestMapping
	 * ���ϲ�����RequestMapping��/Ҳ�����൱����Ŀ�ĸ�Ŀ¼
	 */
	@RequestMapping(value="/Hel")
	public String sayHel() {
		System.out.println("hello world!");
		return sucess;
	}
	@RequestMapping(value="/Hello",method=RequestMethod.POST)
	public String sayHello() {
		System.out.println("hello world!");
		return sucess;
	}
	
	@RequestMapping(value="/testput",method=RequestMethod.PUT)
	/*
	 * @ResponseBody���ؼ�ֵ��
	 */
	public String testMethod() {
		System.out.println("testPut.......");
		return sucess;
	}
	
	@RequestMapping(value="/hello/*/testAnt",method=RequestMethod.POST)
	public String testAnt() {
		System.out.println("testAnt.......");
		return sucess;
	}
	
	/**
	 * @PathVariable:������·���е�ռλ��ӳ�䵽Ŀ�귽��������
	 * http://localhost:8080/springmvc-01/user/testPathVariable/12?
	 *@RequestParam
	 *                 rest���                                                 ԭʼ��
	 * ���ӣ�post
	 * ɾ��:delete      delete/{id}  DELETE    delete��id=001
	 * �޸�:put         update/{id}   PUT      update?id=001
	 * ��ѯ:get         getXXX/{id}   GET      getXXX?id=001
	 * get post ����:
	 * 1.get������ͨ����ַ�����ݲ�����post��ͨ�������崫�ݲ���
	 * 2.get����������д�С���Ƶģ�255�ַ����ϴ���post
	 * @param dddd
	 * @return
	 */
	@RequestMapping(value="/testPathVariable/{id}")
	public String testPathVariable(@PathVariable(value="id") String dddd) {
		System.out.println("ddd:"+dddd);
		return sucess;
	}
	@RequestMapping(value="/params",method=RequestMethod.POST,params= {"username=zhangsan","pwd=123"})
	public String testParams() {
		System.out.println("testParams.......");
		return sucess;
	}
	/**
	 * @RequestParam����ҳ�����������
	 * params���������������
	 * @param dddd
	 * @return
	 */
	@RequestMapping(value="/testRequestParam")
	public String testRequestParam(@RequestParam(value="username",required=false) String username) {
		System.out.println("username:"+username);
		return sucess;
	}
	//��ȡҳ�洫ֵ
	/**
	 * �ڷ��������ǰʹ�� @ModelAttribute ע�⣺���Դ����������л�ȡ������ģ�������л�ȡ�����ٽ�������� �C�󶨵������У�
	 * �ٴ�����ν�������ζ�����ӵ�ģ���� 
	 * @return
	 */
	@RequestMapping(value="/getPageValue",method=RequestMethod.POST)
	public String getPageValue(@ModelAttribute("user") User user) {
		String name=user.getName();
		return sucess;
	}
	
}
