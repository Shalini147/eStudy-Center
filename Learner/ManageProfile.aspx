<%@ Page Title="" Language="C#" MasterPageFile="~/Learner/LearnerMasterPage.master" AutoEventWireup="true" CodeFile="ManageProfile.aspx.cs" Inherits="Learner_ManageProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h1 style="color:maroon;">&nbsp;Update  Profile</h1>
    <hr />
    <div>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="#CFCFB1" BorderColor="#5F2842" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" />
            <CommandRowStyle BackColor="#5F2842" Font-Bold="False" Font-Size="Medium" ForeColor="#3333FF" />
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:eStudeyZoneDBConnectionString %>" DeleteCommand="DELETE FROM [LearnerRegistration] WHERE [UserId] = @original_UserId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))" InsertCommand="INSERT INTO [LearnerRegistration] ([UserId], [FirstName], [LastName], [Email], [Mobile], [Gender], [Country], [State], [City]) VALUES (@UserId, @FirstName, @LastName, @Email, @Mobile, @Gender, @Country, @State, @City)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [UserId], [FirstName], [LastName], [Email], [Mobile], [Gender], [Country], [State], [City] FROM [LearnerRegistration] WHERE ([UserId] = @UserId)" UpdateCommand="UPDATE [LearnerRegistration] SET [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Mobile] = @Mobile, [Gender] = @Gender, [Country] = @Country, [State] = @State, [City] = @City WHERE [UserId] = @original_UserId AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Country] = @original_Country) OR ([Country] IS NULL AND @original_Country IS NULL)) AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UserId" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="userId" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Mobile" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="original_UserId" Type="String" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_State" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    <br />
    <h1 style="color:maroon;">&nbsp;Update Advance Profile</h1>
    <hr />
    <div>

        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="100%" AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource2">
            <AlternatingRowStyle BackColor="#CFCFB1" BorderColor="#5F2842" BorderStyle="Solid" BorderWidth="1px" Font-Bold="False" />
            <CommandRowStyle BackColor="#333333" Font-Bold="False" Font-Size="Medium" ForeColor="#3333FF" />
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="LearnArea" HeaderText="LearnArea" SortExpression="LearnArea" />
                <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                <asp:BoundField DataField="Experience" HeaderText="Experience" SortExpression="Experience" />
                <asp:BoundField DataField="Technology" HeaderText="Technology" SortExpression="Technology" />
                <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="Remark" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:eStudeyZoneDBConnectionString %>" DeleteCommand="DELETE FROM [LearnerAdvancePro] WHERE [UserId] = @original_UserId AND (([LearnArea] = @original_LearnArea) OR ([LearnArea] IS NULL AND @original_LearnArea IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL))" InsertCommand="INSERT INTO [LearnerAdvancePro] ([UserId], [LearnArea], [Level], [Experience], [Technology], [Remark]) VALUES (@UserId, @LearnArea, @Level, @Experience, @Technology, @Remark)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [LearnerAdvancePro] WHERE ([UserId] = @UserId)" UpdateCommand="UPDATE [LearnerAdvancePro] SET [LearnArea] = @LearnArea, [Level] = @Level, [Experience] = @Experience, [Technology] = @Technology, [Remark] = @Remark WHERE [UserId] = @original_UserId AND (([LearnArea] = @original_LearnArea) OR ([LearnArea] IS NULL AND @original_LearnArea IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([Experience] = @original_Experience) OR ([Experience] IS NULL AND @original_Experience IS NULL)) AND (([Technology] = @original_Technology) OR ([Technology] IS NULL AND @original_Technology IS NULL)) AND (([Remark] = @original_Remark) OR ([Remark] IS NULL AND @original_Remark IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UserId" Type="String" />
                <asp:Parameter Name="original_LearnArea" Type="String" />
                <asp:Parameter Name="original_Level" Type="String" />
                <asp:Parameter Name="original_Experience" Type="String" />
                <asp:Parameter Name="original_Technology" Type="String" />
                <asp:Parameter Name="original_Remark" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="LearnArea" Type="String" />
                <asp:Parameter Name="Level" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="Technology" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="UserId" SessionField="userId" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="LearnArea" Type="String" />
                <asp:Parameter Name="Level" Type="String" />
                <asp:Parameter Name="Experience" Type="String" />
                <asp:Parameter Name="Technology" Type="String" />
                <asp:Parameter Name="Remark" Type="String" />
                <asp:Parameter Name="original_UserId" Type="String" />
                <asp:Parameter Name="original_LearnArea" Type="String" />
                <asp:Parameter Name="original_Level" Type="String" />
                <asp:Parameter Name="original_Experience" Type="String" />
                <asp:Parameter Name="original_Technology" Type="String" />
                <asp:Parameter Name="original_Remark" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>
</asp:Content>

