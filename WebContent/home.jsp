
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>SBI</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="css/sbi_css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" language="JavaScript" src="script/sbi.js"></script>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<script type="text/javascript">

function saveGeoHier(){
	var name =document.getElementById("nameid").value;
	if(name==""){
	alert("please enter name value");
	return;
	}
	
	var code=document.getElementById("codeid").value;
	if(code==""){
		alert("please enter code value");
		return;
	}

	document.forms[0].action="save.do";
	document.forms[0].submit();
	
}

function viewGeoHier(){
	document.forms[0].action="view.do";
	document.forms[0].submit();
}

function updateGeoHier(){
	document.forms[0].action="update.do";
	document.forms[0].submit();
}

function deleteGeoHier(){
	document.forms[0].action="delete.do";
	document.forms[0].submit();
}
</script>
</head>

<body>
<form action="save.do">

<table border="0" cellspacing="0" cellpadding="0" height="100%">
	<tr> <td class="logo">
		<table  border="0" cellpadding="0" cellspacing="0" class="table_width" align="right">
        <tr> 
          <td rowspan="2" class="info_welcome">Welcome:</td>
          <td height="12px"></td>
          <td ></td>
          <td></td>
          <td></td>
          <td></td>
          <td rowspan="2" class="info_logout" onMouseOver="this.className='info_logoutOver'" onMouseOut="this.className='info_logout'"onClick="logoff('../login.html');">Logout</td>
        </tr>
        <tr> 
          <td class="info_data">Mr. Ram</td>
          <td class="info">Role:</td>
          <td class="info_data">Administrator</td>
          <td class="info">Location:</td>
          <td class="info_data">Hyderabad</td>
        </tr>
      </table>
	
	</td></tr>
	<tr>
    <td class="top_nav_bg">
		<table cellpadding="0" cellspacing="0" border="0" class="table_width">
			<tr>
				<td class="top_tab_sel" onClick="MM_openBrWindow('search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Home</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('setup_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Geo Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'"  onClick="MM_openBrWindow('setup_human_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Setup Human Hierarchy</td>
				<td class="top_tab_div"></td>
				<td class="top_tab" onMouseOver="this.className='top_tab_over'" onMouseOut="this.className='top_tab'" onClick="MM_openBrWindow('contest.html','_parent','status=yes,scrollbars=yes,resizable=yes')">Contest</td>
          <td class="top_tab_div"></td>
			</tr>
		</table>
	</td>
  </tr>
	<tr>
    <td class="div_bg">&nbsp; </td>
  </tr>
  <tr><td class="con">
  	<table cellpadding="0" cellspacing="0" border="0" id="container" class="con_table">
		<tr>
			<td class="con_left">
				<table cellpadding="0" cellspacing="0" border="0" class="left_nav_table">
              <tr> 
                <td class="left_tab_sel" onClick="MM_openBrWindow('search_geo_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> <span class="left_tab_sel_img">Search 
                  Geo Hierarchy</span> </td>
              </tr>
              <tr> 
                <td class="left_tab" onMouseOver="this.className='left_tab_over'" onMouseOut="this.className='left_tab'" onClick="MM_openBrWindow('view_hierarchy.html','_parent','status=yes,scrollbars=yes,resizable=yes')"> 
                  View Hierarchy </td>
              </tr>
            </table>
			
			</td>
			<td class="con_right">
				<table cellpadding="0" cellspacing="0" border="0">
					<tr>
                <td class="page_title">Search Geo Hierarchy <font color="red"> ${message}</font></td>
              </tr>
					<tr>
						<td class="button_top">
							<input type="button" class="butt" value="Save" 
							onMouseOver="this.className='buttOver'" onclick="saveGeoHier()"
							onMouseOut="this.className='butt'">&nbsp;
							
							<input type="button" class="butt" value="Delete" 
							onMouseOver="this.className='buttOver'" onclick="deleteGeoHier()"
							onMouseOut="this.className='butt'">&nbsp;
							</td></tr>
					<tr>
                <td class="datacell"> <table border="0" cellspacing="0" cellpadding="0" class="data_table">
                    	
                    	<tr><input type="hidden"  name="id" value="${geoHierList1.id}">
                    	</tr>
                      <tr>
                      <td width="10%"><spring:message code="home.name"/></td>
                      <td><input id="nameid" value="${geoHierList1.name}" name="name" type="text" class="text" 
                      onFocus="this.className='textover'" onBlur="this.className='text'"></td>
                      <td width="10%"><spring:message code="home.entitytype"/></td>
                      <td><select name="entitytype" class="sel">
                      	  <option>${geoHierList1.entitytype}</option>
                      	  <option>--select--</option>
                          <option>Corporate</option>
                          <option>Channel</option>
                          <option>Channel Partner</option>
                        </select></td>
                    </tr>
                    <tr> 
                      <td><spring:message code="home.code"/></td>
                      <td><input id="codeid"
                      value="${geoHierList1.code}"
                      name="code" type="text" class="text" 
                      onFocus="this.className='textover'" onBlur="this.className='text'"></td>
                      <td><spring:message code="home.status"/></td>
                      <td><select name="status" class="sel">
                      <option>${geoHierList1.status}</option>
                          <option>--select--</option>
                          <option>Active</option>
                          <option>Inactive</option>
                        </select></td>
                    </tr>
                  </table></td></tr>
					<tr><td class="section_head">Search Result</td></tr>
					<tr>
                <td class="dashboardcell"> <table cellpadding="0"  cellspacing="0" class="dashboard">
                    <tr> 
                      <td nowrap class="table_bar" width="1%">&nbsp;</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'"> Name</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Code</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Entity Type</td>
                      <td nowrap class="table_bar" onMouseOver="this.className='table_bar_over'" onMouseOut="this.className='table_bar'">Status</td>
                    </tr>
                    
                    <c:forEach items="${geoHierList}" var="obj">
                    <tr onMouseOver="this.className='tablecell_over'" onMouseOut="this.className=''"> 
                      <td class="tablecell" > <input type="radio" name="selGeoId" value="${obj.id}"></td>
                      <td class="tablecell">${obj.name}</td>
                      <td class="tablecell">${obj.code}</td>
                      <td class="tablecell">${obj.entitytype}</td>
                      <td class="tablecell">${obj.status}</td>
                    </tr>
                    </c:forEach>
                  </table></td></tr>
					<tr><td class="button_bottom">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr><td>
					<input name="button" type="button" class="butt" 
					onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" 
					value="View" onclick="viewGeoHier()">
                    
                    <input name="button2" type="button" class="butt" 
                    onMouseOver="this.className='buttOver'" 
                    onMouseOut="this.className='butt'" value="Update" 
                    onClick="updateGeoHier()">
                        &nbsp;
                       
                        <select name="select2" >
                          <option>Select Action</option>
                          <option>Re-allocate</option>
                          <option>De-activate</option>
                        </select>
                        <input name="button22" type="button" class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'" value="Ok" onClick="if(document.getElementById('action').selectedIndex==1){MM_openBrWindow('action/realocate.html','_blank','status=yes,scrollbars=yes,resizable=yes,channelmode=yes,menubar=no,location=no')}
						else if(document.getElementById('action').selectedIndex==2){MM_openBrWindow('action/deactive.html','_blank','status=yes,scrollbars=yes,resizable=yes,channelmode=yes,menubar=no,location=no')}">
                      </td>
					  <td class="button_right">
					  <table cellpadding="0" cellspacing="2" border="0" class="table_width">
					  <tr><td>
					  <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../images/btn_first.gif" width="25px" height="14px"></button>
					  </td><td>
					  <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../images/btn_pri.gif" width="12px" height="12px"></button>
					  </td>
					        <td>(2 of 2)</td>
					  <td>
					  <button class="butt" onMouseOver="this.className='buttOver'" onMouseOut="this.className='butt'"><img src="../images/btn_next.gif" width="12px" height="12px"></button> 
						</td>
						<td>
					  <button class="butt2" onMouseOver="this.className='buttOver2'" onMouseOut="this.className='butt2'"><img src="../images/btn_last.gif" width="25px" height="14px"></button>
					  
					  </td>
					  </tr>
					  </table>
				</table>
			
			</td>
		</tr>
	
	</table>
  			</td>
  		</tr>
  	</table>
  <tr><td class="footer">&nbsp;</td></tr>
</table>
</form>
</body>
</html>
