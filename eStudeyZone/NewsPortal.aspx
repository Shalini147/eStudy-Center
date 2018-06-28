<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="NewsPortal.aspx.cs" Inherits="NewsPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
        
        <div style="padding:10px">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="#333333">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <ItemTemplate>  
                <table> 
                    <tr>
                        <td>
                             <img src='<%#Eval("ImageUrl") %>' width="130" height="100" />
                            <td  style="vertical-align:top;">
                                <span  style="color:#0094ff;font-weight:bold;"><%#Eval("Category") %>:</span>  
                                <br />
                            <span><%#Eval("News") %></span>  
                               
                                <br />
                               <span style="color:maroon;font-size:smaller;"> <%#Eval("Date") %></span>  

                               
                      </td>
                  </tr>

                        
                            
                </table>

            </ItemTemplate>
                <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            </asp:DataList>
    </div>
    


</asp:Content>

