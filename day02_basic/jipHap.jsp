<%@page import="java.util.Arrays"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Comparator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application 기본 객체 사용하여 자원 읽기</title>
</head>
<body>

<%
	List<Integer> list1=new ArrayList<Integer>();
	List<Integer> list2=new ArrayList<Integer>();
	list1.add(1);	list1.add(3);
	list1.add(4);list1.add(5);list1.add(8);
	
	list2.add(1);list2.add(8);
	list2.add(5);list2.add(7);list2.add(10);
	
	Collections.sort(list1);
	Collections.sort(list2);
	// kyo     1,8,5     cha   list1-list2    3,4   hap 1,3,4,5,7,8,10   
	// 순서는 신경쓰지마세요.
	List<Integer> kyo=new ArrayList<Integer>();
	for (int i = 0; i < list1.size(); i++) {
		for (int j = 0; j < list2.size(); j++) {
			if (list1.get(i) == list2.get(j)) {
				kyo.add(list2.get(j));
			}
		}
	}
	List<Integer> cha=new ArrayList<Integer>();
	
	cha.addAll(list1);
	cha.removeAll(list2);
	Collections.sort(cha);
	
	
	List<Integer> hap=new ArrayList<Integer>();
	hap.addAll(list1);
	hap.addAll(list2);
	Collections.sort(hap);
	
    //kyo, cha, hap 구하는 코드
    // 작성하세요.
    
	request.setAttribute("kyo", kyo);
	request.setAttribute("cha", cha);
	request.setAttribute("hap", hap);
%>
list1 : <%=list1%><br>
list2 : <%=list2%><br>

kyo <%=request.getAttribute("kyo") %> <br>
cha <%=request.getAttribute("cha") %> <br>
hap <%=request.getAttribute("hap") %> <br>

</body>
</html>