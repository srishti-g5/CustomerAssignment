<html>
    <style>
        .tdtheme
        {
            width:20px;
            height:15px;
            
            background-color: F0785C ;
            font-weight:bold;
            font-family:fantasy;
            font-size:33px;
            align:center;
        }
        .tdtheme:hover{
            background-color:white;
        }
        .highlight
        {
             width:20px;
            height:50px;
            border-radius:20px;
            
            font-weight:bold;
            font-family:default;
        }
        .sitetitle{
            font-size:70px;
            font-weight:bold;
            font-family:cursive;
            text-transform:uppercase;
            color:black;
        }
        a{text-decoration:none;
        Color:black}
    </style>
    <body bgcolor="white">
       
        
        <div style="width:100%;height:100px;background-color:blue">
<!--            <table width="80%">
                <tr colspace="2">
                    
                    <td align="right">
                        <h2 class="sitetitle"><font color="F0785C">ADD CUSTOMER</h2>
                    </td>
                    
                </tr>
            </table>-->
        </div>
        <div style="width:100%;height:50px;background-color:black;">
            
          
        </div>
        <br>
        <br>
        <br>
        <br>
        <div style="width:60%;height:260px;background:rgba(255,255,255,0.6);margin-left:400px">
           
           <form action="AddCustomerCode.jsp">
             <table width="50%"align="left"border="0"cellspacing="5"cellpadding="3">
                 <tr bgcolor="white">
                    <td align="center"colspan="2"><h4>Customer Registration</h4></td>
                    
                </tr>
<!--<tr align="center">
                    <td><font color="black">USER ID</td>
                   
               
                    <td><input type="text" name="uId" class="inputtheme"value="<%=session.getAttribute("CALL")%>"></td>
                   
                </tr>-->
                                <tr align="center"colspace="2">
                                    
                    <td><font color="black">First Name</td>
                   
               
                    <td><input type="text" name="fName"class="inputtheme"placeholder="enter first name here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Last Name</td>
                   
               
                    <td><input type="text" name="lName" class="inputtheme"placeholder="enter last name here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Street</td>
                   
               
                    <td><input type="integer" name="street" class="inputtheme"placeholder="enter street here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Address</td>
                   
               
                    <td><input type="float" name="address" class="inputtheme"placeholder="enter address here"></td>
                   
                </tr>
<tr align="center">
                    <td><font color="black">City</td>
                   
               
                    <td><input type="integer" name="city" class="inputtheme"placeholder="enter city here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">State</td>
                   
               
                    <td><input type="float" name="state" class="inputtheme"placeholder="enter state here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Email</td>
                   
               
                    <td><input type="integer" name="email" class="inputtheme"placeholder="enter email here"></td>
                   
                </tr>
                <tr align="center">
                    <td><font color="black">Phone</td>
                   
               
                    <td><input type="float" name="phone" class="inputtheme"placeholder="enter phone here"></td>
                   
                </tr>

                                


            
               <tr align="center">
                   <td><input type="submit" value="SUBMIT"class="buttontheme"></td>
                   <td><input type="reset"value="CLEAR"class="buttontheme"></td>
                </tr>
           </table> 
               </form>

        
            </body>
</html>
