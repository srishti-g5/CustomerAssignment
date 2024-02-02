<%-- 
    Document   : Login
    Created on : 2 Feb, 2024, 10:59:00 PM
    Author     : sgsri
--%>

<html>
    <style>
        .buttontheme{
            font-size: 20px;
        }
    </style>
    <body bgcolor="lightblue">
        <div style="width: 100%; height: 20%; background: rgba(0,0,0,0.5)">
            
        </div>
        <br>
        
        <div style="width: 50%; height: 50%; background: rgba(255,255,255,0.4); margin-left: 350px">
            <form action="logincode.jsp">
            <table align="center" width="80%" cellspacing="15px" cellpadding="5px">
                <tr align="center" bgcolor="white">
                    <td colspan="2"><font size="6px">LOGIN</td>
                </tr>
                <tr align="center">
                    <td>Enter Id</td>
                </tr>
                <tr align="center">
                    <td><input type="text" placeholder="enter id here" name="uId"></td>
                </tr>
                <tr align="center">
                    <td>Enter Password</td>
                </tr>
                <tr align="center">
                    <td><input type="password" placeholder="enter password here" name="pass"></td>
                </tr>
                <tr align="center">
                    <td><input type="submit" value="Login" class="buttontheme"><td>
                </tr>
            </table>
            </form>
        </div>
        
    </body>
</html>
