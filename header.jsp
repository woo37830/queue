
<%@ page  import="java.util.*,com.shoulderscorp.core.Token,com.shoulderscorp.util.XMLUtilities" %>

<%
    // This is done on the server
    /*
    String userToken = (String) request.getParameter( "userToken" ); // from login

    String applicationName = request.getParameter( "app" );
    if( applicationName.equals("System Admin") )
    {
        applicationName = "SystemAdmin";
    }
    String processName = request.getParameter( "process" );
    String userName = Token.getUserName( userToken );
    String userID = Token.getUserId( userToken );
    String jobID = request.getParameter( "current_job" );
    int jobIDlength = 0;
    if (jobID != null && !jobID.equals("-1"))
    {
        jobIDlength = jobID.length();
    }
    String estimatedTime = request.getParameter( "timer" );
    */
%>
<script>
   /* $(document).ready(function() { // This is done in the browser on the client after html loads
        var aToken = '<%=userToken%>';
        if (aToken !== null)
        {
            token = '<%=userToken%>';
            $('#token').text(token);
        }
    });
    */
</script>
<center>
    <!-- This is done on the server, request should have filled in userToken -->
    <table cellpadding="0" cellspacing="0" width="100%" >
        <tr>
            <td width="150" height="100" align="center" valign="middle">
                <a href="http://www.shoulderscorp.com">
                    <IMG id="logo" SRC="_images/scLogo.jpg" width="150" height="50" alt="Version: 1.0" border="0" >
                </a>
            </td>
            <td>
                <table id="header-table">
                    <% if (applicationName != null)
                    {%>
                    <tr id="app" title="View Application">
                        <td>&nbsp;Application:&nbsp;&nbsp;</td>
                        <td id="doApplication"><%=applicationName%></td>
                    </tr>
                    <% }
                    if (processName != null)
                    {%>
                    <tr id="process" title="View Process">
                        <td>&nbsp;Process:&nbsp;&nbsp;</td>
                        <td id="doProcess"><%=processName%></td>
                    </tr>
                    <% }%>
                    <tr id="debug-token">
                        <td>&nbsp;UserToken:&nbsp;&nbsp;</td>
                        <td id="token"><%=userToken%></td>
                    </tr >
                    <% if (jobIDlength > 0)
                    {%>
                    <tr>
                        <td>&nbsp;Job:&nbsp;&nbsp;</td>
                        <td id="doJob"><%=jobID%></td>
                    </tr >
                    <% }%>
                </table>
            </td>
            <td align="right" width="100%">

                <table id="header-nav" cellPadding="0" cellSpacing="0" width="100%"  align="left">
                    <tr valign="top" >
                        <td align="right" valign="middle" >
                            <table border="0" cellPadding="2" cellSpacing="4">
                                <tr>
                                    <td>&nbsp;User:&nbsp;&nbsp;</td>
                                    <td id="userName" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Edit User Prefs"><a href="editPrefs.jsp?userName=<%=userName%>&userToken=<%=userToken%>" title="User Preferences"><%=userName%></a></td>
                                    <td id="home-td"  ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Home"><img alt="Home" src="_images/Home.gif" width="27" height="25">
                                    </td>
                                    <td id="bugs" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Problem Reports"><img alt="Bugs" src="_images/bug.gif" width="27" height="25">
                                    </td>
                                    <td id="notes" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Notes"><img alt="Notes" src="_images/Notes.gif" width="27" height="25">
                                    </td>
                                    <td ONCLICK="supportCenter(this);" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Support"><img alt="Support" src="_images/support.gif"  width="27" height="25">
                                    </td>

                                    <td ONCLICK="disabledMenuClick(this);" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Site Map"><img alt="Site Map" src="_images/sitemap.gif"  width="27" height="25">
                                    </td>
                                    <td ONCLICK="disabledMenuClick(this);" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Products"><img alt="Products" src="_images/products.gif"  width="27" height="25">
                                    </td>
                                    <td ONCLICK="logout();" ONMOUSEOVER="mouseOver_Color(this);" ONMOUSEOUT="mouseOut_Color(this);" nowrap title="Log Out"><img alt="Log Out" src="_images/logout.jpg"  width="27" height="25">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</center>

<div id="error-div">
    <% if (request.getParameter( "_error" ) != null)
        {%> <%=request.getParameter( "_error" )%> <% }%>
</div>
<hr>


