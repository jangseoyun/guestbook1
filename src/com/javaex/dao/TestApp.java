package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestbookVo;

public class TestApp {

	public static void main(String[] args) {
		
		GuestBookDao guestbookDao = new GuestBookDao();
		List<GuestbookVo> guestbookList = guestbookDao.getList();
		
		System.out.println(guestbookList.toString());

	}

}
