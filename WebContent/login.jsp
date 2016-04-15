
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="script/sbi.js"></script>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
</head>

<body>
<form action="login1.do">
<table border="0" cellspacing="0" cellpadding="0" height="70%">
  <tr> 
    <td class="logo">&nbsp; </td>
  </tr>
  <tr> 
    <td align="center"><table cellpadding="0" cellspacing="0" border="0" class="login_table">
        <tr> 
          <td class="login_bar">Login</td>
        </tr>
        
        <tr> 
          <td class="login_con"> <table cellpadding="0" cellspacing="0" border="0" height="100%">
              <tr> 
                <td class="login_bg_left"><img src="images/dot.gif" width="1px"></td>
                <td class="login_bg_right"><img src="images/dot.gif" width="1px"></td>
              </tr>
              <tr> 
                <td class="login_left_bg_con">
					<table cellpadding="0" cellspacing="3" border="0" class="login_container">
                    <tr> 
                      <td><spring:message code="login.user"/></td>
                      <td><input name="user" id="user" type="text" 
                      class="text" onFocus="this.className='textover'" 
                      onBlur="this.className='text'" title="Enter Login ID">
                      </td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td>(ex.:dataentry,supervisor,admin)</td>
                    </tr>
                    <tr> 
                      <td><spring:message code="login.password"/></td>
                      <td><input name="password" id="pwd" type="password" class="text" 
                      onFocus="this.className='textover'" onBlur="this.className='text'" 
                      title="Enter Password">
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td>(ex.:admin)</td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      <td class="login_button">
                      	 
                        <input name="button" type="submit" class="butt" 
                        onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" 
                        value="Login" title="Login"></td>
                    </tr>
                    <tr> 
                      <td>&nbsp;</td>
                      
                      <td><a href="#" class="link">Forgot Password</a> &nbsp; 
                        <a href="#" class="link">Reset Password</a>
                      </td>
                      </tr>
                      
                      <tr>
                       <td>&nbsp;</td>
                      <td><a href="?lan=en" >English</a>&nbsp;
                      <a href="?lan=nl" >Dutch</a>&nbsp;
                      <a href="?lan=fr" >French</a>
                      <a href="?lan=it" >Italian</a>
                      <a href="?lan=te" >Telugu</a>
                      </td>
                    </tr>
                  </table>
				
				</td>
                <td class="login_bg_right_mid">&nbsp;</td>
              </tr>
              <tr>
                <td class="login_left_bg"><img src="images/dot.gif" width="1px"></td>
                <td class="login_bg_right_dw"><img src="images/dot.gif" width="1px"></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
