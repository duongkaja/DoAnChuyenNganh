<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucLopCT.ascx.cs" Inherits="WebHocThem.UserControls.ucLop" %>
<style type="text/css">
    .c1 {
        width: 100%;
    }
    .c7 {
        text-align: left;
        width: 243px;
    }
    .c8 {
        width: 243px;
        height: 23px;
        text-align: left;
    }
    .c10 {
        text-align: left;
        width: 185px;
    }
    .c11 {
        width: 185px;
        height: 23px;
        text-align: left;
    }
    .c12 {
        text-align: left;
        width: 238px;
    }
    .c13 {
        width: 238px;
        height: 23px;
        text-align: left;
    }
    .c14 {
        text-align: left;
        width: 235px;
    }
    .c15 {
        width: 235px;
        height: 23px;
        text-align: left;
    }
    .c16 {
        text-align: left;
        width: 177px;
    }
    .c17 {
        width: 177px;
        height: 23px;
        text-align: left;
    }
    .c19 {
        font-size: x-large;
        height: 53px;
    }
    .c20 {
        text-align: left;
    }
</style>


<asp:SqlDataSource ID="Lop" runat="server" ConnectionString="<%$ ConnectionStrings:DBWebHocThemConnectionString %>" SelectCommand="SELECT [ID], [TenLop], [MonHoc], [Levels], [GiaoVien], [SoLuong] FROM [Lop]"></asp:SqlDataSource>


<asp:Repeater ID="RLop" runat="server" DataSourceID="Lop" >
    <HeaderTemplate>
        <table class="c1">
    <tr>
        <td class="c19" colspan="6" style="text-align: center"><strong>DANH SÁCH HỌC VIÊN LỚP <%# Eval("TenLop") %></strong></td>
    </tr>
    <tr>
        <td class="c16">MÃ LỚP</td>
        <td class="c14">TÊN LỚP</td>
        <td class="c7">MÔN HỌC</td>
        <td class="c10">LEVEL</td>
        <td class="c12">GIÁO VIÊN</td>
        <td class="c20">SỐ LƯỢNG</td>
    </tr>
    </HeaderTemplate>
    <ItemTemplate>
            <tr>
            <td class="c17"><%# Eval("ID") %></td>
            <td class="c17"><%# Eval("TenLop") %></td>
            <td class="c15"><%# Eval("MonHoc") %></td>
            <td class="c8"><%# Eval("Levels") %></td>
            <td class="c11"><%# Eval("GiaoVien") %></td>
            <td class="c13"><%# Eval("SoLuong") %></td>
        </tr>
    </ItemTemplate>

    <FooterTemplate>
       </table>
    </FooterTemplate>
</asp:Repeater>

<%--<p>
    <asp:DataPager ID="DataPager1" runat="server" PageSize="3" PagedControlID="RLop">
        <Fields>
            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
        </Fields>
    </asp:DataPager>
</p>--%>
