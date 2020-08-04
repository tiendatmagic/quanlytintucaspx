<%@ Page Title="" Language="C#" MasterPageFile="~/Magic.Master" AutoEventWireup="true" CodeBehind="Chude.aspx.cs" Inherits="Quanlycanbo.Canbo1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid">
    <p> Bảng danh sách Chủ đề</p>
    <div class="table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource1" CssClass="table table table-bordered" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="CHUDE_ID" HeaderText="Chủ đề ID" ReadOnly="True" SortExpression="CHUDE_ID" />
            <asp:BoundField DataField="TENCD" HeaderText="Tên chủ đề" SortExpression="TENCD" />
            <asp:CommandField ShowSelectButton="True" HeaderText="Danh mục lựa chọn" SelectText="Chọn" />
        </Columns>
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" SelectCommand="SELECT * FROM [CHUDE]"></asp:SqlDataSource>
    
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="CHUDE_ID" DataSourceID="SqlDataSource2" CssClass="table table table-bordered text-black" OnItemDeleted="DetailsView3_ItemDeleted" OnItemInserted="DetailsView3_ItemInserted" OnItemUpdated="DetailsView3_ItemUpdated">
                <Fields>
                    <asp:BoundField DataField="CHUDE_ID" HeaderText="CHUDE_ID" ReadOnly="True" SortExpression="CHUDE_ID" />
                    <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" CancelText="Hủy" DeleteText="Xóa" EditText="Sửa" InsertText="Thêm" NewText="Mới" UpdateText="Cập nhật" />
                </Fields>
            </asp:DetailsView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:tintucConnectionString %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDE_ID] = @CHUDE_ID" InsertCommand="INSERT INTO [CHUDE] ([CHUDE_ID], [TENCD]) VALUES (@CHUDE_ID, @TENCD)" SelectCommand="SELECT * FROM [CHUDE] WHERE ([CHUDE_ID] = @CHUDE_ID)" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDE_ID] = @CHUDE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CHUDE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CHUDE_ID" Type="String" />
                    <asp:Parameter Name="TENCD" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="CHUDE_ID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TENCD" Type="String" />
                    <asp:Parameter Name="CHUDE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>


</div>
</asp:Content>
