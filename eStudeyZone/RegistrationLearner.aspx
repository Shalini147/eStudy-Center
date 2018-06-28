<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationLearner.aspx.cs" Inherits="Learner_RegistrationLearner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
         
        width: 50%;
         
        
    }
        .auto-style2 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="container">
    <h1 style="color:maroon;font-size:.7cm;">Learner Registration</h1>
        <hr />
        <div>

            <table cellpadding="2" class="auto-style1">
                <tr>
                    <td>User Id</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="#FF3300"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Conform</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="19px" Width="179px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">First Name</td>
                    <td class="auto-style2">:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox4" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="98px">
                            <asp:ListItem>Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Country</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>State</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" Height="19px" Width="179px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="#009900"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" Height="36" Width="130" ImageUrl="~/Image/reg1.jpg" runat="server" OnClick="ImageButton1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    
  </div>
</asp:Content>

