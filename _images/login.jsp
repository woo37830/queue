<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page contentType="text/html"%>

<jsp:useBean id="errors" class="com.shoulderscorp.util.ErrorBean" scope="session" />
<HTML>
<HEAD><TITLE>Nav</TITLE>
<style>
  .btm      {position:absolute; left:0px;}
  .comment  {color:white; align:center}
  a:link    {color:#333399}
  a:visited {color:#333399}
  a:hover   {color:#006666}
  a         {text-decoration:none}
  b         {font-size:9pt}
  .txt      {font-size:9pt;color:#333366; font-face:arial }
 </style>
<META name="GENERATOR" content="IBM WebSphere Studio">
</HEAD>

<BODY >
<div style="position:absolute; top: 0px; left:0px;">
<img src="_images/producerLogo.jpg" height="50">
</div>
<div style="position:absolute; top:30px; left:60px;">
<img width="800" height="1" src="_images/producerLongHorizontalLine.jpg">
</div>
<div style="font-size:22;color:716133;position:absolute; top: 10px; left:35%; z-index:2;">
    Building Applications In Real Time!
</div>

<div style="width:100%;align:center;position:absolute; top:100px;">
<FORM METHOD="post" ACTION="logon" name="loginForm">
  <CENTER>
    <DIV CLASS="txt">UserName:</DIV>
      <INPUT TYPE="text" NAME="userId" SIZE="10" >
    <DIV CLASS="txt">Password:</DIV>
      <INPUT TYPE="password" NAME="password" SIZE="10" ><BR><BR>
          <INPUT TYPE="hidden" NAME="Application.name" Value="sc_producer">
          <INPUT TYPE="hidden" NAME="productId" Value="Producer">
      <INPUT TYPE="hidden" NAME="cmd" VALUE="login">
      <INPUT TYPE="submit" NAME="image" VALUE="Login" style="background-color:white;color:black" ALT="Login">
</CENTER>
</FORM>
  <br>
  <center>
    <br><%=errors.getErrors().get(0) %>
    </center>
</div>

<div style="position:absolute;left:95%;top:93%;z-index:-1;">
<Img height="50" src="_images/scLogo.jpg">
</div>

</BODY>
</HTML>
