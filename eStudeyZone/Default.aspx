<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MainMasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;

        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container">    
         
       <div id="featured_slide">
           <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
     <h1 style="text-align:center;color:#FFFFFF; background-color: #3F3F3F;font-size:x-large;border-top-left-radius:5px; border-top-right-radius:5px;padding:5px 5px;">Search Trainer</h1>
           
           <table class="auto-style1">
               <tr>
                   <td>Expertise Area</td>
                   <td>Qalification</td>
                   <td>Comfortable Level</td>
                   <td rowspan="2" style="padding-top:10px;">
                       
                       <asp:ImageButton ID="ImageButton1" Height="36px" Width="140px" runat="server" ImageUrl="~/Image/Search4.jpg" OnClick="ImageButton1_Click" />
                   </td>
               </tr>
               <tr>
                   <td>
                    <asp:DropDownList ID="drpExperties" runat="server" Height="20px" Width="192px">
                        <asp:ListItem>------ Expertise Area -----</asp:ListItem>
                        <asp:ListItem>Computer Scince</asp:ListItem>
                        <asp:ListItem>Computer Network</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                        <asp:ListItem>.NET</asp:ListItem>
                        <asp:ListItem>PHP</asp:ListItem>
                        <asp:ListItem>Data Structure</asp:ListItem>
                        <asp:ListItem>Math</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td>
                    <asp:DropDownList ID="drpQali" runat="server" Height="20px" Width="192px">
                        <asp:ListItem>----- Qalification -------</asp:ListItem>
                     
                        <asp:ListItem>Intermediate</asp:ListItem>
                        <asp:ListItem>Graduate</asp:ListItem>
                        <asp:ListItem>BCA</asp:ListItem>
                        <asp:ListItem>BCS IT</asp:ListItem>
                         <asp:ListItem>B.Tech</asp:ListItem>
                        <asp:ListItem>Post Graduate</asp:ListItem>
                        <asp:ListItem>MCA</asp:ListItem>
                        <asp:ListItem>M.Tech</asp:ListItem>
                        <asp:ListItem>MCADoctrate</asp:ListItem>
                        <asp:ListItem>PHD</asp:ListItem>
                    </asp:DropDownList>
                   </td>
                   <td>
                    <asp:DropDownList ID="drpComfor" runat="server" Height="20px" Width="192px">
                        <asp:ListItem>-----  Comfortable Level  ---------</asp:ListItem>
                        <asp:ListItem>Begner</asp:ListItem>
                        <asp:ListItem>Average</asp:ListItem>
                        <asp:ListItem>Professional</asp:ListItem>
                        <asp:ListItem>Any</asp:ListItem>
                    </asp:DropDownList>
                   </td>
               </tr>
           </table>
           
  </div>

        <%#Eval("ExpertiseArea") %>

   
    <div id="hpage">

        <div id="comments" style="float:left;width:700px;margin-right:30px;">
            <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" >

             <ItemTemplate>
              <ul class="commentlist">
                <li class="comment_odd" style="width:680px;">
                 <div class="author"><span  class="name"><a href="#" style="color:maroon;"><%#Eval("FirstName")%>&nbsp; <%#Eval("LastName") %></a></span>&nbsp;&nbsp; Expertise Area   <span style="color:navy;" class="wrote">-  <%#Eval("ExpertiseArea") %>  </span>     </div>
                 <div class="submitdate"><a href="#"><%#Eval("LastUpdate") %></a></div>
                    <p style="color:green;margin-bottom:0px;">Work Experience: <b> <%#Eval("WorkExperience") %> -  <%#Eval("Qalification") %>  </b>  </p>
                   <b> Project Achievement:</b> &nbsp;
                    <i style="color:blue;">"<%#Eval("ProjectAchievement") %>"</i>
                    <p style="margin-bottom:0px;"><b>Remark:</b><br />  <span>  <%#Eval("Remark") %>  </span></p>
                    <div style="margin-top:0px;float:right;">
                        <asp:ImageButton ID="ImageButton2" AlternateText='<%#Eval("UserId") %>' ImageUrl="~/Image/request-button.png" Height="32" Width="120" runat="server" CommandName="request" />
                    </div>
                     
                </li>
             </ul>
           </ItemTemplate>

                <AlternatingItemTemplate>
          <ul class="commentlist">
                <li class="comment_even" style="width:680px;">
                 <div class="author"><span  class="name"><a href="#" style="color:maroon;"><%#Eval("FirstName")%>&nbsp; <%#Eval("LastName") %></a></span>&nbsp;&nbsp; Expertise Area   <span style="color:navy;" class="wrote">-  <%#Eval("ExpertiseArea") %>  </span>     </div>
                 <div class="submitdate"><a href="#"><%#Eval("LastUpdate") %></a></div>
                    <p style="color:green;margin-bottom:0px;">Work Experience: <b> <%#Eval("WorkExperience") %> -  <%#Eval("Qalification") %>  </b>  </p>
                   <b> Project Achievement:</b> &nbsp;
                    <i style="color:blue;">"<%#Eval("ProjectAchievement") %>"</i>
                    <p style="margin-bottom:0px;"><b>Remark:</b><br />  <span>  <%#Eval("Remark") %>  </span></p>
                    <div style="margin-top:0px;float:right;">
                        <asp:ImageButton ID="ImageButton2" AlternateText='<%#Eval("UserId") %>' ImageUrl="~/Image/request-button.png" Height="32" Width="120" runat="server" CommandName="request" />
                    </div>
                     
                </li>
             </ul>
                </AlternatingItemTemplate>



            </asp:DataList>
        </div>

      <ul>
    
        <li class="last">
        
          <div class="imgholder">
              
              <img style="margin-left:15px;" src="Image/add4.jpg" />
              


          </div>
        </li>
      </ul>
      <br class="clear" />
    </div>
 
    <div class="clear"></div>
  </div>
</asp:Content>



