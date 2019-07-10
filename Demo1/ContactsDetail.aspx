<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactsDetail.aspx.cs"
    Inherits="Demo1.ContactsDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        table
        {
            border-collapse: collapse; /* IE7 and lower */
            border-spacing: 0;
            width: 100%;
        }
        .contactlist td, .contactlist th
        {
            padding: 5px; /*border-bottom: 1px solid #f2f2f2;*/
        }
        
        .contactlist th
        {
            background-image: -webkit-gradient(linear, left top, left bottom, from(#BEBEBE), to(#d0d0d0));
            background-image: -webkit-linear-gradient(top, #BEBEBE, #d0d0d0);
            background-image: -moz-linear-gradient(top, #BEBEBE, #d0d0d0);
            background-image: -ms-linear-gradient(top, #BEBEBE, #d0d0d0);
            background-image: -o-linear-gradient(top, #BEBEBE, #d0d0d0);
            background-image: linear-gradient(top, #BEBEBE, #d0d0d0);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr style="font-size: 50pt;">
                <td style="width: 25%;">
                    <a href="ContactsPerson.aspx" style="text-decoration: none;"><span style="color: #0066CC;">
                        <</span>&nbsp;<span style="font-size: 40pt; color: #CE0000;">返回</span></a>
                </td>
                <td align="center" style="width: 50%;">
                    <span>通讯录</span>
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
        <table id="Tbl1" class="contactlist">
            <thead id="THead">
                <tr style="font-size: 60pt; height: 140px;">
                    <th style="width: 4%;">
                    </th>
                    <th align="left" colspan="3">
                        Rivaldo Shen
                    </th>
                </tr>
            </thead>
            <tbody id="TBody" align="center">
                <tr style="font-size: 35pt; height: 100px;">
                    <td style="width: 4%;">
                    </td>
                    <td align="center" style="width: 30%;">
                        部门：
                    </td>
                    <td align="left" style="width: 60%;">
                        Admin
                    </td>
                    <td align="center">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr size="3" />
                    </td>
                </tr>
                <tr style="font-size: 35pt; height: 100px;">
                    <td style="width: 4%;">
                    </td>
                    <td align="center" style="width: 30%;">
                        邮箱：
                    </td>
                    <td align="left" style="width: 60%;">
                        Admin@saif.sjtu.edu.cn
                    </td>
                    <td align="center">
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr size="3" />
                    </td>
                </tr>
                <tr style="font-size: 35pt; height: 100px;">
                    <td style="width: 4%;">
                    </td>
                    <td align="center" style="width: 30%;">
                        手机：
                    </td>
                    <td align="left" style="width: 50%;">
                        13918609768
                    </td>
                    <td align="left" style="width: 16%;">
                        <img src="Images/phone.png" style="width: 100px; height: 100px;" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr size="3" />
                    </td>
                </tr>
                <tr style="font-size: 35pt; height: 100px;">
                    <td style="width: 4%;">
                    </td>
                    <td align="center" style="width: 30%;">
                        固话：
                    </td>
                    <td align="left" style="width: 60%;">
                        021-62933591
                    </td>
                    <td align="left" style="width: 16%;">
                        <img src="Images/phone.png" style="width: 100px; height: 100px;" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <hr size="3" />
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
