<%@ Page Title="" Language="C#" MasterPageFile="~/Learner/LearnerMasterPage.master" AutoEventWireup="true" CodeFile="LearnerBlog.aspx.cs" Inherits="Learner_LearnerBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 3px solid #008000;
            background-color: #F8F7DF;
        }
        .auto-style2 {
            width: 145px;
        }
        .auto-style3 {
            width: 10px;
        }
        .auto-style4 {
            width: 145px;
            height: 34px;
        }
        .auto-style5 {
            width: 10px;
            height: 34px;
        }
        .auto-style6 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <h2 style="background-color:black;color:white;padding:5px;">Lerarner Blog</h2>






    <table cellpadding="5" cellspacing="4" class="auto-style1">
        <tr> 
            <td class="auto-style2">Name</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Blog Content</td>
            <td class="auto-style5">:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" Width="130px" />
            </td>
        </tr>
    </table>



</asp:Content>

