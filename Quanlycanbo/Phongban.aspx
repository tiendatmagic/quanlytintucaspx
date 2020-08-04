<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Phongban.aspx.cs" Inherits="Quanlycanbo.Phongban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <p> Bảng quản trị danh sách Phòng ban </p>
    <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="phongbanID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CssClass="table table table-bordered text-black" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="phongbanID" HeaderText="Phòng ban ID" ReadOnly="True" SortExpression="phongbanID" />
            <asp:BoundField DataField="tenphongban" HeaderText="Tên phòng ban" SortExpression="tenphongban" />
            <asp:CommandField ShowSelectButton="True" HeaderText="Danh mục chọn" SelectText="Chọn" />
        </Columns>
    </asp:GridView>
        </div>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" CssClass="table table table-bordered text-black" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="phongbanID" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
            <Fields>
                <asp:BoundField DataField="phongbanID" HeaderText="phongbanID" ReadOnly="True" SortExpression="phongbanID" />
                <asp:BoundField DataField="tenphongban" HeaderText="tenphongban" SortExpression="tenphongban" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Mới" UpdateText="Cập nhật" />
            </Fields>

        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:quanlicanboConnectionString1 %>" DeleteCommand="DELETE FROM [phongban] WHERE [phongbanID] = @phongbanID" InsertCommand="INSERT INTO [phongban] ([phongbanID], [tenphongban]) VALUES (@phongbanID, @tenphongban)" SelectCommand="SELECT [phongbanID], [tenphongban] FROM [phongban]" UpdateCommand="UPDATE [phongban] SET [tenphongban] = @tenphongban WHERE [phongbanID] = @phongbanID">
        <DeleteParameters>
            <asp:Parameter Name="phongbanID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="phongbanID" Type="String" />
            <asp:Parameter Name="tenphongban" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenphongban" Type="String" />
            <asp:Parameter Name="phongbanID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:quanlicanboConnectionString1 %>" DeleteCommand="DELETE FROM [phongban] WHERE [phongbanID] = @phongbanID" InsertCommand="INSERT INTO [phongban] ([phongbanID], [tenphongban]) VALUES (@phongbanID, @tenphongban)" SelectCommand="SELECT * FROM [phongban] WHERE ([phongbanID] = @phongbanID)" UpdateCommand="UPDATE [phongban] SET [tenphongban] = @tenphongban WHERE [phongbanID] = @phongbanID">
            <DeleteParameters>
                <asp:Parameter Name="phongbanID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="phongbanID" Type="String" />
                <asp:Parameter Name="tenphongban" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="phongbanID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="tenphongban" Type="String" />
                <asp:Parameter Name="phongbanID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

</div>
</asp:Content>
