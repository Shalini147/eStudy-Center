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
        .auto-style7 {
            width: 155px;
            height: 30px;
        }
        .auto-style8 {
            width: 24px;
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="background-color:gray;color:white;padding:5px;">Learner Advance Profile</h2>

    <table align="center" class="auto-style1">
        <tr>
            <td class="auto-style2"colspan="3" id="label1">
                &nbsp;</td>
            </tr>
        <tr>
            <td class="auto-style2">Learn Area </td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:DropDownList ID="drpArea" runat="server" Height="16px" Width="237px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Computer science</asp:ListItem>
                    <asp:ListItem>.Net</asp:ListItem>
                    <asp:ListItem>Java</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>Math</asp:ListItem>
                </asp:DropDownList>
              
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Level<td class="auto-style8">:-</td>
            <td class="auto-style9">
                <asp:DropDownList ID="drpLevel" runat="server" Height="16px" Width="237px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Beginer</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Professsional</asp:ListItem>

                </asp:DropDownList>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Experince<td class="auto-style5">:-</td>
            <td class="auto-style6">
                <asp:DropDownList ID="drpExp" runat="server" Height="16px" Width="237px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>0 year</asp:ListItem>
                    <asp:ListItem>1 year</asp:ListItem>
                    <asp:ListItem>2 year</asp:ListItem>
                    <asp:ListItem>3 year</asp:ListItem>

                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">Technology<td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="txtTech" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Remark</td>
            <td class="auto-style3">:-</td>
            <td>
                <asp:TextBox ID="txtrem" runat="server" Height="71px" TextMode="MultiLine" width="212px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="submit" Width="163px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>    

