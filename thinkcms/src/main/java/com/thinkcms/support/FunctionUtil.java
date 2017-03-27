package com.thinkcms.support;

import java.util.Collection;

public class FunctionUtil {
	public static boolean contains(Collection<?> collection, Object element) {
		if (collection == null) {
			return false;
		}
		return collection.contains(element);
	}
	public static boolean contain(String collection, String element) {
		if (collection == null) {
			return false;
		}
		return collection.contains(element);
	}
	public static boolean equals(String el1, String el2) {
		if (el1 == null) {
			return false;
		}
		return el1.equals(el2);
	}

	public static String splitTerminal(String oldStr, String function) {
		String result = "";
		if (oldStr == null) {
			return null;
		}
		String[] temp = oldStr.split(",");
		for (int i = 0; i < temp.length; i++) {
			result += "<a href='#' onclick='"+function+"'>"+temp[i]+"</a>";
			if (i<temp.length-1) {
				result += ",";
			}
		}
		return result;
	}
	
	public static void main(String[] args) {
		System.out.println(splitTerminal("1", "test();"));
	}
}
