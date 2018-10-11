package com.taotao.controller;

import java.io.File;
import java.io.FileInputStream;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.junit.Test;

import com.taotao.common.utils.FtpUtil;
//JUnit测试上传
public class FTPTest {
//	@Test
//	public void testFtpClient() throws Exception{
//		//创建一个ftpClient对象
//		FTPClient ftpClient=new FTPClient();
//		//创建ftp连接
//		ftpClient.connect("182.254.245.209", 21);
//		System.out.println("success");
//		//登录ftp服务器，使用 用户名和密码
//		ftpClient.login("jingjing", "jingjing521");
//		//上传文件
//		//读取本地文件
//		FileInputStream inputStream=new FileInputStream(new File("D:\\love.jpg"));
//		//设置上传路径
//		ftpClient.changeWorkingDirectory("/");
//		//设置上传文件的格式
//		ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
//		//第一个参数：服务器端文档名
//		//第二个参数：上传文档的inputStream
//		ftpClient.storeFile("love.jpg", inputStream);
//		//关闭连接
//		ftpClient.logout();
//	}
	@Test
	public void testFtpUtil() throws Exception{
		FileInputStream inputStream=new FileInputStream(new File("D:\\QQ图片20170921220053.jpg"));
		FtpUtil.uploadFile("182.254.245.209", 21, "jingjing", "jingjing521", "/", "img", "pan.jpg", inputStream);
	}
}
