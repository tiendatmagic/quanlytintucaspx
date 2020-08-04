<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="Quanlycanbo.Phongban" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <p> Bảng quản trị danh sách Tin tức </p>
    <div class="table-responsive">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TIN_ID,TGIA_ID" DataSourceID="SqlDataSource1" CssClass="table table table-bordered text-black" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="TIN_ID" HeaderText="Tin ID" ReadOnly="True" SortExpression="TIN_ID" />
                <asp:BoundField DataField="NOIDUNG" HeaderText="Nội dung" SortExpression="NOIDUNG" />
                <asp:BoundField DataField="NGAYGUI" HeaderText="Ngày gửi" SortExpression="NGAYGUI" />
                <asp:BoundField DataField="TGIA_ID" HeaderText="Tác giả ID" ReadOnly="True" SortExpression="TGIA_ID" />
                <asp:CommandField HeaderText="Danh mục lựa chọn" SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
    </div>

        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" CssClass="table table table-bordered text-black" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TIN_ID,TGIA_ID" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
            <Fields>
                <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
                <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
                <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
                <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Mới" UpdateText="Cập nhật" />
            </Fields>

        </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [TINTUC]">
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TIN_ID] = @TIN_ID AND [TGIA_ID] = @TGIA_ID" InsertCommand="INSERT INTO [TINTUC] ([TIN_ID], [NOIDUNG], [NGAYGUI], [TGIA_ID]) VALUES (@TIN_ID, @NOIDUNG, @NGAYGUI, @TGIA_ID)" SelectCommand="SELECT * FROM [TINTUC] WHERE ([TIN_ID] = @TIN_ID)" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI WHERE [TIN_ID] = @TIN_ID AND [TGIA_ID] = @TGIA_ID">
            <DeleteParameters>
                <asp:Parameter Name="TIN_ID" Type="String" />
                <asp:Parameter Name="TGIA_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TIN_ID" Type="String" />
                <asp:Parameter Name="NOIDUNG" Type="String" />
                <asp:Parameter Name="NGAYGUI" Type="DateTime" />
                <asp:Parameter Name="TGIA_ID" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="TIN_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="NOIDUNG" Type="String" />
                <asp:Parameter Name="NGAYGUI" Type="DateTime" />
                <asp:Parameter Name="TIN_ID" Type="String" />
                <asp:Parameter Name="TGIA_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

</div>
</asp:Content>
