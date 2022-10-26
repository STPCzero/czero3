<%@ page import="java.util.List" %>
<%@ page import="kopo.poly.dto.NewsDTO" %>
<%@ page import="kopo.poly.util.CmmUtil" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<NewsDTO> nList = (List<NewsDTO>) request.getAttribute("nList");
%>
<!DOCTYPE html>
<html>
<head>
    <style>
        @media screen and (width: 500px) {
            div {
                max-width: 70em;
                margin-left: 50px;
            }
        }
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/td-awesome/4.6.3/css/td-awesome.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
    <link href="https://tds.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://tds.googleapis.com/css?family=Roboto:200,300,400,500,600,700" rel="stylesheet">

</head>
<body>

<!-- HEADER =============================-->
<header class="item header margin-top-0">
    <div class="wrapper">
        <nav role="navigation" class="navbar navbar-white navbar-embossed navbar-lg navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button data-target="#navbar-collapse-02" data-toggle="collapse" class="navbar-toggle"
                            type="button">
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle navigation</span>
                    </button>
                    <img src="/images/Czero.png" style="width: 135px; height: 60px; margin-top: 5px" alt="로고">
                </div>
                <div id="navbar-collapse-02" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="propClone"><a href="/index">Home</a></li>
                        <li class="propClone"><a href="/market/market-list">Market</a></li>
                        <li class="propClone"><a href="/checklist/checklist">Checklist</a></li>
                        <li class="propClone"><a href="api">Bicycle</a></li>
                        <li class="propClone"><a href="/mypage/myinfo">Mypage</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="text-pageheader">
                        <div class="subtext-image" data-scrollreveal="enter bottom over 1.7s after 0.1s">
                            Check List
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- CONTENT =============================-->
<div class="row">
    <%
        for (int i = 0; i < nList.size(); i++) {
            NewsDTO nDTO = nList.get(i);
    %>
    <div class="col-md-1"><%=CmmUtil.nvl(nDTO.getNews_Department())%></div>
    <div class="col-md-7"><%=CmmUtil.nvl(nDTO.getNews_title())%></div>
    <div class="col-md-2"><%=CmmUtil.nvl(nDTO.getNews_date())%></div>

    <%
        }
    %>
</div>

<!-- FOOTER =============================-->
<div class="footer text-center" style="width: 100%; position: fixed; bottom: 0;">
    <div class="container">
        <div class="row">
            <p class="">
                Thanks for visiting our Website.<br>
                Copyright ⓒ 2022. Team.CZero All rights reserved.
            </p>
        </div>
    </div>
</div>
</body>
</html>