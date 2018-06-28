<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="container">
    <div id="content">
      <h1 style="color:#FFFFFF; background-color: #3F3F3F;padding:6px 6px;border-top-left-radius:3px; border-top-right-radius:3px;">Blog(s)</h1>
     <hr />
      <div id="comments">
        
        
        <asp:DataList ID="DataList1" runat="server" >

             <ItemTemplate>
              <ul class="commentlist">
                <li class="comment_odd" style="width:560px;">
                 <div class="author"><span  class="name"><a href="#" style="color:maroon;"><%#Eval("Name")%></a></span>&nbsp;&nbsp; User <span style="color:navy;" class="wrote">-  <%#Eval("UserType") %>  </span>     </div>
                 <div class="submitdate"><a href="#"><%#Eval("Date") %></a></div>
                    <p style="margin-bottom:0px;"><b>comments:</b><br />  <span>  <%#Eval("BlogContent") %>  </span></p>
                   
                     
                </li>
             </ul>
           </ItemTemplate>

          <AlternatingItemTemplate>
                 <ul class="commentlist">
                <li class="comment_even" style="width:560px;">
                 <div class="author"><span  class="name"><a href="#" style="color:maroon;"><%#Eval("Name")%></a></span>&nbsp;&nbsp; User <span style="color:navy;" class="wrote">-  <%#Eval("UserType") %>  </span>     </div>
                 <div class="submitdate"><a href="#"><%#Eval("Date") %></a></div>
                    <p style="margin-bottom:0px;"><b>comments</b><br />  <span>  <%#Eval("BlogContent") %>  </span></p>
                     
                </li>
             </ul>
         </AlternatingItemTemplate>



            </asp:DataList>
      </div>
    </div>
    <div id="column">
      <div class="subnav">
        <h2>Lcttest Blogs !!</h2>
      </div>
      <div class="holder">
        <h2 class="title"><img src="images/demo/60x60.gif" alt="" />Nullamlacus dui ipsum conseque loborttis</h2>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</asp:Content>

