<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Suggestion.aspx.cs" Inherits="Suggestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #008080;
            background-color: #C0C0C0;
        }
        .auto-style2 {
            width: 228px;
        }
        .auto-style3 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table align="center" cellpadding="2" class="auto-style1">
        <tr>
            <td colspan="3">SUGGESTION PAGE</td>
        </tr>
        <tr>
            <td class="auto-style2">User Id</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">E-mail</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Suggestion</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="submit" Width="165px" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>



</asp:Content>

