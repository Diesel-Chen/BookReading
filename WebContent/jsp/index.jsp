<%@page import="vo.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
	<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>阅享</title>
    <script  src="<%=request.getContextPath() %>/js/myfocus-2.0.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/style.css">
</head>
<body>
    <div class="box">
  		<%@ include file="header.jsp" %>  	
  		<hr noshade color="#abc" class="hr1">
        <div  class="lb">
           <div class="banner">
             <div id="soild" ><!-- 焦点图盒子 -->
             <div class="pic">
              <ul><!-- 内容列表 -->
                <li><a href=""><img src="<%=request.getContextPath() %>/img/00.jpg" thumb=""  text="" width="700px" height="250px"></a></li>
                <li><a href=""><img src="<%=request.getContextPath() %>/img/11.jpg" thumb=""  text=""  width="700px" height="250px"></a></li>
                <li><a href=""><img src="<%=request.getContextPath() %>/img/425.jpg" thumb=""  text="" width="700px" height="250px"></a></li>
                <!-- <li><a href=""><img src="img/lbt003.jpg" thumb="" alt="标题4" text=" 详细描述1 "></a></li> -->
              </ul>
             </div>
             </div>
           </div>
        </div>
        <hr noshade color="#abc" class="hr1">

        <div class="wk">
            <span class="title">
                <span class="yuan">○</span>
                <span class="bt">电影原著推荐</span>
            </span>
                <div class="cont" id="cont">
                <ul id="bk">    
                  <li><a href="tushuxinxi.html">·《我不是潘金莲》原著之同名小说，刘震云著</a></li>
                  <li><a href="tushuxinxi.html">·《怪屋女孩》电影“佩小姐的奇幻城堡”原著</a></li>
                  <li><a href="tushuxinxi.html">·《藏地密码》何润东李纯主演网络热播剧原著</a></li>
                  <li><a href="tushuxinxi.html">·《山楂树之恋》影后周冬雨主演电影原著小说</a></li>
                  <li><a href="tushuxinxi.html">·《神奇动物在哪里》J.K.罗琳再创经典玄幻之作</a></li>
                </ul>
                <ul id="bk2"></ul>
               </div>
        </div>
        <img src="<%=request.getContextPath() %>/img/222.png" class="sdjd_img">
        <div class="nav1">
            <ul>
                <li><a href="" onmouseover="rel1()" >红楼梦</a></li>
                <li><a href="" onmouseover="rel3()" >三国演义</a></li>
                <li><a href="" onmouseover="rel5()" >水浒传</a></li>
            </ul>
        </div>
         <div id="k1">
            <img src="<%=request.getContextPath() %>/img/31.jpg" style="margin:0px;height:100%;">
            <div class="k2">
                <span class="wz1">
               &nbsp;&nbsp;《红楼梦》是中国古代作家曹雪芹花费了十年心血铸就的一部文学巨著。
               《红楼梦》以贵族青年贾宝玉、林黛玉、薛玉钗之间的恋爱和婚姻悲剧为主线。
                但是，小说的社会意义在于它并没有孤立地描写这个爱情悲剧，而是以此为中心，
                写出了当时具有代表性的封建大家庭族存亡过程，从而折射出社会的变化。
                在中国古代文学史上，还没有一部作品能把爱情悲剧写得像《红楼梦》这样富有激动人心的力量。
                小说的标题，以及穿插其间的诗词曲赋，乃至人名，似乎都各有深意，引发读者的无限回思
               </span>
            </div>
        </div> 

        <div id="x1">
            <img src="<%=request.getContextPath() %>/img/89.jpg" style="position:absolute;top:20px;right:10px;height:60%;">
             <div class="x2">
                <span class="wz2">
               &nbsp;&nbsp;《三国演义》是中国古代第一部长篇章回小说，是历史演义小说的经典之作。
                小说描写了公元3世纪以曹操、刘备、孙权为首的魏、蜀、吴三个政治、军事集团之间的矛盾和斗争。
                在广阔的社会历史背景上，展示出那个时代尖锐复杂又极具特色的政治军事冲突，
                在政治、军事谋略方面，对后世产生了深远的影响。
                本书语言生动、场面宏大、个性鲜明，
                塑造出曹操、刘备、关羽、张飞等许多不朽的历史人物形象，
                其出色的文学成就，使它的影响事实上已深入到中国文学、艺术及社会生活的方方面面。
               </span>
          
            </div>
             <div class="x3"><span style="font-size:40px;font-family:'微软雅黑';">《三国演义》</span></div>
        </div>
        <div id="s1">
            <img src="<%=request.getContextPath() %>/img/678.jpg" style="position:absolute;top:40px;right:10px;height:80%;">
             <div class="s2">
                <span class="wz3">
               &nbsp;&nbsp;《水浒传》以农民起义的发生、发展过程为主线，通过各个英雄被逼上梁山的不同经历，描写出他们由个体觉醒到走上小规模联合反抗，到发展为盛大的农民起义队伍的全过程，表现了“官逼民反”这一封建时代农民起义的必然规律，塑造了农民起义领袖的群体形象，深刻反映出北宋末年的政治状况和社会矛盾。  小说以高俅发迹作为故事的开端，意在表明“乱自上作”，高俅是封建统治集团的代表人物。作者还写了大批的贪官污吏和地方恶霸，正是他们狼狈为奸，渔肉百姓，才迫使善良而正直的人们不得不挺而走险，奋起反抗。小说深刻地挖掘出了封建时代农民起义的深层原因。
               </span>
            </div>
        </div>

        <div class="yk">
             <span class="title1">
                <span class="yuan1">○</span>
                <span class="bt1">排行榜</span>
            </span>
                <div class="cont0" id="cont0">
                <ul id="bk0"> 
                <%
                	List<Book> paihangbang = (List)request.getAttribute("paihangbang");
    				for (Book book : paihangbang) {
				%>
					<li><center><a href="tushuxinxi.html">·《<%=book.getBname() %>》<br><%=book.getBauthor() %></a></center></li>
				<%	
    				}
                %>   
                </ul>
                </div>
        </div>

    <img src="<%=request.getContextPath() %>/img/098.png" style="position:absolute;top:830px;left:20px;width:140px;height:50px;">
	<%
		List<Book> MostHots = (List)request.getAttribute("MostHots");
		for(Book book : MostHots){
	%>
			 <div class="kk">
		        <a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>"><img src="<%=request.getContextPath()%><%=book.getBimage() %>" style="height:80%; width: 125px;position:absolute;left:10px;top:10px;"></a>
		        <div style="position:absolute;left:140px;top:10px;"><a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>" class="xb1"><%=book.getBname() %></a></div>
		        <div style="position:absolute;left:140px;top:68px;width:110px;color:#555;"><%=book.getBauthor() %> <div class="miaoshu"><%=book.getBcontent() %></div></div>
		        <div style="position:absolute;bottom:10px;left:140px;"><a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>" style="font-family:'宋体';font-weight:bold;font-size:15px;color:#555;text-decoration:none;">立即阅读></a></div>
		    </div>
	<%
		}
	%>
   
    
    <img src="<%=request.getContextPath() %>/img/1221.png" style="position:absolute;top:1315px;left:20px;width:140px;height:50px;">
	<%
		List<Book> MostNews = (List)request.getAttribute("MostNews");
		for(Book book : MostNews){

    %>
			 <div class="kk1">
		        <a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>"><img src="<%=book.getBimage() %>" style="height:80%; width: 125px;position:absolute;left:10px;top:10px;"></a>
		        <div style="position:absolute;left:140px;top:10px;"><a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>" class="xb1"><%=book.getBname() %></a></div>
		        <div style="position:absolute;left:140px;top:38px;width:110px;color:#555;"><%=book.getBauthor() %> <div class="miaoshu"><%=book.getBcontent() %></div></div>
		        <div style="position:absolute;bottom:10px;left:140px;"><a href="<%=request.getContextPath() %>/BookServlet?method=findBooksByBid&bid=<%=book.getBid() %>" style="font-family:'宋体';font-weight:bold;font-size:15px;color:#555;text-decoration:none;">立即阅读></a></div>
		    </div>
	<%
		}
	%>
    </div>

 <script type="text/javascript">
    myFocus.set({
    id:'soild',//焦点图盒子ID
    pattern:'mF_fancy',    //风格应用的名称
    time:2,// 切换时间间隔秒
    trigger:'click',//触发切换模式:'click(点击)/'mouseover'（悬停）
    width:700,  ///设置图片区域宽度（像素）
    height:250,//设置图片的区域高度
    txtHeight:'default'  //文字层高度设置，'default' 为默认高度，0为隐藏
  });

    var a=document.getElementById('k1')
    
     function rel1(){
        a.style.display="block"
        b.style.zIndex=1
        c.style.zIndex=2
        b.style.display="none"
        c.style.display="none"
     }

     var b=document.getElementById('x1')
     function rel3(){
        a.style.zIndex=0
        c.style.zIndex=2
        b.style.display="block"
        a.style.display="none"
        c.style.display="none"
     }

     var c=document.getElementById('s1')
     function rel5(){
        a.style.zIndex=0
        b.style.zIndex=1
        c.style.display="block"
        a.style.display="none"
        b.style.display="none"
     }

    var cont=document.getElementById('cont')
    var n1=document.getElementById('bk')
    var n2=document.getElementById('bk2')  
    n2.innerHTML=n1.innerHTML
    function rel(){
        if(cont.scrollTop>=n1.scrollHeight-20){
                        cont.scrollTop=0;
                    }else{
                        cont.scrollTop=cont.scrollTop+1;
                    }
                }
    var timer=setInterval(rel,30)
    cont.onmouseover=function(){
    clearInterval(timer)
                }
    cont.onmouseout=function(){
    timer=setInterval(rel,50)
                }

     
</script>

</body>
</html>
</body>
</html>