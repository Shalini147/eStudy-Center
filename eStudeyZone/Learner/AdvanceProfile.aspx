<%@ Page Title="" Language="C#" MasterPageFile="~/Learner/LearnerMasterPage.master" AutoEventWireup="true" CodeFile="AdvanceProfile.aspx.cs" Inherits="Learner_AdvanceProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border-left-style: solid;
            border-left-width: 7px;
            border-right: 7px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 7px;
            border-bottom: 7px solid #C0C0C0;
            background-color: #ffffff;
        }
        .auto-style2 {
            width: 155px;
        }
        .auto-style3 {
            width: 24px;
        }
        .auto-style4 {
            width: 155px;
            height: 24px;
        }
        .auto-style5 {
            width: 24px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 style="background-color:gray;color:white;padding:5px;">Learner Advance Profile</h2>

    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style2">Learn Area</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Level</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Experince</td>
            <td class="auto-style5">:-</td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Technology</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Remark</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" Width="163px" />
            </td>
        </tr>
    </table>

</asp:Content>    

