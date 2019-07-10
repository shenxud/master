<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RepairsList.aspx.cs" Inherits="Demo1.RepairsList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr style="font-size: 50pt;">
                <td style="width: 25%;">
                    <a href="www.baidu.com" style="text-decoration: none;"><span style="color: #0066CC;">
                        <</span>&nbsp;<span style="font-size: 40pt; color: #CE0000;">返回</span></a>
                </td>
                <td align="center" style="width: 50%;">
                    <span>我的报修记录</span>
                </td>
                <td style="width: 25%;">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <hr size="3" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table border="1" style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr align="center" style="font-size: 50pt;">
                <td style="width: 50%; background-color: #930000;">
                    <span style="color: White;">待处理</span>
                </td>
                <td style="width: 50%;">
                    <span>已处理</span>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <hr size="3" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <table id="Tbl1" border="" style="width: 100%; border-collapse: inherit;" cellpadding="1"
            cellspacing="1">
            <tbody id="TBody" align="center">
                <tr style="height: 200px;">
                    <td style="width: 20%;">
                        <img src="Images/a.jpg" style="width: 180px; height: 180px;" />
                    </td>
                    <td style="width: 50%;">
                        <p>
                            10月</p>
                    </td>
                    <td style="width: 30%;">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
