<%@ Page Title="" Language="C#" MasterPageFile="~/ChiSha.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
How Many?<asp:TextBox ID="TextBox1" runat="server">4</asp:TextBox>
    <asp:Button ID="Button1"
    runat="server" Text="Button" onclick="Button1_Click1" />
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="FoodID" DataSourceID="ObjectDataSource2">
        <Columns>
            <asp:BoundField DataField="FoodID" HeaderText="FoodID" InsertVisible="False" 
                ReadOnly="True" SortExpression="FoodID" />
            <asp:BoundField DataField="FoodName" HeaderText="FoodName" 
                SortExpression="FoodName" />
        </Columns>
    </asp:GridView>
    
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="Menu1TableAdapters.MenuTodayTableAdapter">
        <SelectParameters>
            <asp:Parameter DefaultValue="4" Name="Count" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    
placeholder1<br />
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FoodID" 
        DataSourceID="ObjectDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ButtonType="Button" />
            <asp:BoundField DataField="FoodID" HeaderText="FoodID" InsertVisible="False" 
                ReadOnly="True" SortExpression="FoodID" Visible="False" />
            <asp:BoundField DataField="FoodName" HeaderText="Food Name" 
                SortExpression="FoodName" />
        </Columns>
    </asp:GridView>
    <div>输入新菜：</div>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="FoodID" DataSourceID="ObjectDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="FoodID" HeaderText="FoodID" InsertVisible="False" 
                ReadOnly="True" SortExpression="FoodID" />
            <asp:BoundField DataField="FoodName" HeaderText="FoodName" 
                SortExpression="FoodName" />
            <asp:CommandField ButtonType="Button" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
&nbsp;<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="Menu1TableAdapters.MenuTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_FoodID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FoodName" Type="String" />
            <asp:Parameter Name="Original_FoodID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="FoodName" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
&nbsp;
</asp:Content>

