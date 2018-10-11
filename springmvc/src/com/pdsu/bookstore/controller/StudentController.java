package com.pdsu.bookstore.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.jni.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.WebUtils;

import com.pdsu.entities.Role;
import com.pdsu.entities.Student;
import com.pdsu.entities.User1;
@RequestMapping(value="/stu")
@Controller
public class StudentController {
	private static final String success="success";
	/*
	 * �������
	 */
	@RequestMapping(value="/getMassage",method=RequestMethod.POST)
	public String getMassage(@RequestParam("username") String username) {
		System.out.println("�û�����"+username);
		return success;
	}
	
//	HttpServletRequest��������
//	HTTPЭ��:�����ײ�������ͷ��������
//	����:������
//	       �����ײ� ����ͷ ������
//	        get�����ģ�������  �����ײ�  ����ͷ
//		        post�����ģ�������   ����ͷ  ������
//			      
//		HttpSession:һ�λỰ��һ��������رգ�	   
//	Application:���ʴ���
//	��ȡԭ����
	//����ҳ�����
	@RequestMapping(value="/testRawApi")
	public String testRawApi(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
		String path=request.getContextPath();
		System.out.println("��ǰ·������"+path);
		response.getWriter().print("hello world");
		//��ֵ��ҳ��
		session=request.getSession();
		session.setAttribute("aaa", "123");
		return success;
	}	     
	@RequestMapping(value="/testPojo",method=RequestMethod.POST)
//	public String testPojo(Student stu,String[] hobby) {
//		System.out.println(stu);
//		System.out.println(stu.getName());
//		System.out.println(stu.getAge());
//		System.out.println(hobby);
//		for(String str:hobby) {
//			System.out.println(str);
//		}
	public String testPojo(Student stu) {
		List<Role> list=stu.getList();
		for(Role role:list) {
			System.out.println(role.getRoleName());
		}
		return success;
	}
	
	//����ҳ�����
//	WebUtils ��һ���ǳ����õĹ�����
//	���� HttpServletRequest �� HttpSession �еĶ�������Դ����˷���
	@RequestMapping(value="/testWebUtils")
	public String testWebUtils(HttpServletRequest request) {
		Map<String, Object> parameters=WebUtils.getParametersStartingWith(request, "search_");
//		1��entrySetʵ����Set�ӿڣ������ŵ��Ǽ�ֵ�ԡ�һ��K��Ӧһ��V��
//		2����������map��һ�ַ���:ͨ��getKey�����õ�K��getValue�õ�V��
		Set<Entry<String, Object>> set=parameters.entrySet();
		for(Entry<String, Object> entry : set) {
			System.out.println(entry.getKey()+":"+entry.getValue());
		}
		return success;
	}
	
	//��ֵ��ҳ��
	@RequestMapping(value="/testMap")
//	public String testMap(HttpServletRequest request) {
//		ArrayList<Integer> list=new ArrayList<Integer>();
//		list.add(1);
//		list.add(2);
//		list.add(3);
//		request.setAttribute("list",list );
//		return success;
//	}
	
	//http://localhost:8080/springmvc-01/stu/testMap
//	public String testMap(Map<String,Object> map) {
//		Student student=new Student("����",12,false);
//		map.put("stu", student);
//		return success;
//	}
	
//	 ��view�����ͨ��${stu}����ȡ����,��view��ͨ��model�е�key���л�ȡ.
//	model�����ø�request��setAttribute(arg0, arg1) ��һ���ģ�
//	���ǰ�ֵ���Ƕ������һ�����棬Ȼ���������ͼ�Ͻ���ȡֵ��ͬ��������ʹ��ognl���ʽȡֵ
	public String testMap(Model model) {
		Student student=new Student("����",12,false);
		model.addAttribute("stu", student);
		return success;
	}
	
	//ʹ��ModelAndView�������洢�������Ľ�����ݣ��Լ���ʾ�����ݵ���ͼ
	//������ݴ洢�ڸ����model�����У���Ҫ���ص���ͼ��Ϣ�洢�ڸ����view������
	@RequestMapping(value="/testModelAndView")
	private ModelAndView testModelAndView() {
		ModelAndView mv=new ModelAndView(success);
		ArrayList<User1> list=new ArrayList<User1>();
		list.add(new User1("1","aa",60,true));
		list.add(new User1("2","bb",60,true));
		list.add(new User1("3","cc",60,true));
		list.add(new User1("4","dd",60,true));
		list.add(new User1("5","ee",60,true));
		mv.addObject("list", list);
		return mv;
	}
	//������ӦΪget
	@RequestMapping(value="/update/{id}")
	public String toUpdatePage(@PathVariable(value="id") String sid) {
		System.out.println("�޸�"+sid);
		return "update";
		
	}
	@RequestMapping(value="/delete/{id}")
	public String toDeletePage(@PathVariable(value="id") String sid) {
		System.out.println("ɾ���ɹ�"+sid);
		return "delete";
		
	}
	@RequestMapping(value="/get/{id}")
	public String toGetPage(@PathVariable(value="id") String sid) {
		System.out.println("��ѯ"+sid);
		return success;
	}
	@RequestMapping(value="/post")
	public String toAddPage() {
		return "add";
	}
	//ת�����ض���
	@RequestMapping(value="/redirect")
	public String testRedirect() {
		System.out.println("�÷���ִ��");
		return "forward:/WEB-INF/views/update.jsp";
//		return "redirect:/index.jsp";//ɾ��������
	}
	
	@RequestMapping(value="/testJson",method=RequestMethod.POST)
	@ResponseBody
	public List<User1> testJson(HttpServletRequest request){
		//�����ݵ�ajax
		List<User1> list=new ArrayList<User1>();
		list.add(new User1("1","aa",15,true));
		list.add(new User1("2","����",25,true));
		list.add(new User1("3","����",20,true));
		list.add(new User1("4","����",35,true));
		//��ȡajax���������
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("time"));
		return list;
		
	}
}
