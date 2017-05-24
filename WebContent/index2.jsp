<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>时间函数
			</title>
	</head>
	<body>
		<div id="clock"> </div>
	</body>
	<script language="javascript">
			function realSysTime(){
				var now = new Date();
				var year = now.getFullYear();
				var month = now.getMonth() + 1;
				var date =  now.getDate();
				var day = now.getDay();
				var hour = now.getHours();
				var minu = now.getMinutes();
				if(minu < 10){
					minu = "0" + minu;
				}
				var sec = now.getSeconds();
				if(sec < 10){
					sec = "0" + sec;
				}
				var arr_week = new Array("星期日","星期一","星期二","星期三","星期四","星期五","星期六");
				var week = arr_week[day];
				var time = year + "年" + month + "月" + date + "日 " + week + hour + ":" + minu + ":" + sec;
				clock.innerHTML="当前时间是:" + time;
			}
			window.onload=function(){window.setInterval("realSysTime('clock')",1000);}
		</script>
</html>
