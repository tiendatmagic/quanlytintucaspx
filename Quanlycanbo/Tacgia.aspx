<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="Quanlycanbo.Canbo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <p> Bảng danh sách Tác giả</p>
    <div class="table-responsive">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TGIA_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CssClass="table table table-bordered" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="TGIA_ID" HeaderText="Tác giả ID" ReadOnly="True" SortExpression="TGIA_ID" />
            <asp:BoundField DataField="TENTG" HeaderText="Tên tác giả" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="Email" SortExpression="EMAIL" />
            <asp:CommandField HeaderText="Danh mục lựa chọn" SelectText="Chọn" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
        </div>

        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" DataSourceID="SqlDataSource2" CssClass="table table table-bordered text-black" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="TGIA_ID" OnItemDeleted="DetailsView2_ItemDeleted" OnItemInserted="DetailsView2_ItemInserted" OnItemUpdated="DetailsView2_ItemUpdated">
            <Fields>
                <asp:BoundField DataField="TGIA_ID" HeaderText="TGIA_ID" ReadOnly="True" SortExpression="TGIA_ID" />
                <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
                <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Mới" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" UpdateText="Cập nhật" />
            </Fields>
        </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]">
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIA_ID] = @TGIA_ID" InsertCommand="INSERT INTO [TACGIA] ([TGIA_ID], [TENTG], [EMAIL]) VALUES (@TGIA_ID, @TENTG, @EMAIL)" SelectCommand="SELECT * FROM [TACGIA] WHERE ([TGIA_ID] = @TGIA_ID)" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIA_ID] = @TGIA_ID">
            <DeleteParameters>
                <asp:Parameter Name="TGIA_ID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TGIA_ID" Type="String" />
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="TGIA_ID" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="TENTG" Type="String" />
                <asp:Parameter Name="EMAIL" Type="String" />
                <asp:Parameter Name="TGIA_ID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
