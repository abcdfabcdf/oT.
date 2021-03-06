<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>문의쓰기</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!--    <link rel="stylesheet" href="./css/Login_style.css"> -->
<link rel="stylesheet" href="/ot/resources/css/mypage_list.css">
<link rel="stylesheet" href="/ot/resources/css/mypage_basic.css">
<link rel="icon" type="image/png" href="/ot/resources/images/icons/favicon.png"/>
</head>
<style>
.ec-base-table td{
  border-top: 1px solid #EEE !important;
  font-size:13px;
}
.ec-base-table.typeList .center td.left {
    padding-left: 3px;
    text-align: left !important;
 }
 .xans-board .ec-base-table tbody th {
    padding: 15px 10px 14px 18px;
    border-right: 0;
    border-left: 0;
    background: 0;
    font-weight: 400;
    color: #666;
     border-top: 1px solid #EEE !important;
    font-size: 13px;
  
    }

 
.thumb{
 text-align: left !important;
	padding-left: 1% !important;
}
.ec-base-table.typeWrite td {
    padding: 0px 0px 0px !important;
}
.ec-base-table.typeWrite{
	border: none;
}


</style>
<body>
	<jsp:include page="header.jsp"/>
 	<%String prdtNo = request.getParameter("prdtNo"); %>
	
    <div id="container">
        <div id="contents" style="margin-top:11.5%;">
			<div class="mypage_top_outer">
			 
			</div>

			<div class="titleArea">
    			<h2>문의</h2>
			</div>

			<div class="xans-element- xans-layout xans-layout-logincheck ">
			<!--
			    $url = /member/login.html
			-->
			</div>
			
			<div class="xans-element- xans-board xans-board-writepackage-1002 xans-board-writepackage xans-board-1002 "><div class="xans-element- xans-board xans-board-title-1002 xans-board-title xans-board-1002 "><div class="title">
      
        </div>
</div>
<form id="boardWriteForm" action="delivery_board_insert.do" method="post" enctype="multipart/form-data">
		<input type="hidden" id="prdtNo" name="prdtNo" value="<%= prdtNo %>">
	<div class="xans-element- xans-board xans-board-write-1002 xans-board-write xans-board-1002">
		<!--
            $login_page_url = /member/login.html
            $deny_access_url = /index.html
        -->
	<div class="ec-base-table typeWrite ">
            <table border="1" summary="">
		<caption>글쓰기 폼</caption>
            <colgroup>
				<col style="width:150px;">
				<col style="width:auto;">
			</colgroup>
		<tbody>
		
	<tr>
		<th scope="row">SUBJECT</th>
           <td><select id="subject" name="b_cate_no">
			<option value="1">[상품문의]</option>
			</select>  	
		   </td>
    </tr>
    
	<tr>
		<th scope="row">TITLE</th>
           <td><input type="text" name="qna_title" style="width: 390px;height: 26px;">
		   </td>
    </tr>
    
	<td colspan="2" class="clear">           
            <script type="text/javascript" src="//editor.cafe24.com/js/nneditor.js?c=ko"></script>
            <style type="text/css">@import "http://editor.cafe24.com/css/style.css?ver=r3.4.0.20191127.1";@import "http://editor.cafe24.com/css/styleie8.css?ver=r3.4.0.20191127.1";		</style>		<script type="text/javascript" src="http://editor.cafe24.com/lang/ko.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorUtils.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorRange.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script><script type="text/javascript" src="http://editor.cafe24.com/js/nneditorCore.dev.js?version=r3.4.0.20191127.1" charset="UTF-8"></script>
            <script type="text/javascript">
                NN.Config.instanceID = "content";
                NN.Config.value = "▶ 오전에는 입고 작업중으로 오후 2시정도에 문의주시는게 더 정확합니다.<br />\n<br />\n당일 주문건은 재고가 있을 시 당일 배송처리 되고 보통 다음날부터 입고가 되기 때문에 바로 안내가 어렵습니다.<br />\n<br />\n* 배송전 교환/취소시 [배송전 부분취소/변경] 제목선택을 안해주시면 상품교환/주문취소는 당일 처리되지 않습니다 *<br />\n<br />\n비회원으로 문의주실 경우엔 동명이인으로 인해 주문정보와 함께 남겨주셔야 바로 처리 가능합니다.<br />\n<br />\n----------------------------------------------------------------------<br>";
                NN.Config.toolbarType = "simple";
                
                
                

                //Editor Height
                NN.Config.height=400;

                var oNN_content = new NNEditor();
                oNN_content.build();

                if (typeof $Editor != "object") {
                    $Editor = {
                        _obj : {},

                        push : function(obj, id) {
                            this._obj[id] = obj;
                        },

                        get : function(id) {
                            return this._obj[id];
                        },

                        reset : function(id) {
                            this._obj[id].getText().value = "";
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].Config.START_HTML;
                        },

                        contents : function(id, context) {
                            this._obj[id].getText().value = context;
                            this._obj[id].getIFDoc().body.innerHTML = this._obj[id].view.parsing(2);
                        }
                    };
                }

                $Editor.push(oNN_content, "content");
            </script>	
            	
		
	</tbody>
	
		<tbody class="">
			<tr>
				<th scope="row">FILE 01</th>
                    <td><input name="uploadFile" type="file"></td>
            </tr>
			
	</tbody>
	<tbody>
			<tr class="">
				<th scope="row">PASSWORD</th>
                    <td><input id="qna_password" name="qna_password" value="" type="password"></td>
            </tr>
            
			<tr class="">
			<th scope="row">SECRET</th>
                   <td><input id="secure0" name="qna_secure"  value="F" type="radio">
                   <label for="secure0">공개글</label>
				   <input id="secure1" name="qna_secure"  value="T" type="radio" checked="checked">
				   <label for="secure1">비밀글</label></td>
            </tr>
            
			
            
		</tbody>
	</table>
</div>
		<div class="ec-base-button ">
            <span class="gLeft">
                <span class="displaynone"><a href="#none" onclick="" class="yg_btn_30 yg_btn4" alt="관리자답변보기">관리자답변보기</a></span>
                <a href="http://localhost:8888/ot/product_detail.do?product_detail=<%= prdtNo %>#qna" class="yg_btn_30 yg_btn4" alt="목록">LIST</a>
            </span>
            <span class="gRight">
                <button  id="de_insert_ok" class="yg_btn_30 yg_btn4" alt="등록">OK</button>
                <a href="http://localhost:8888/ot/product_detail.do?product_detail=<%= prdtNo %>#qna" class="yg_btn_30 yg_btn4" alt="취소">CANCEL</a>
            </span>
        </div>
	</div>
</form>
</div>

	</div>
	
 <%@include file="footer.jsp" %>
 <script>
 
 $('#de_insert_ok').click(function(){
		$('#boardWriteForm').submit();
	});
 </script>
</body>
</html>