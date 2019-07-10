<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Demo1.WebForm1" %>

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
        .G1
        {
            background-color: #F0F0F0;
        }
    </style>
</head>
<body onload="InitTable();">
    <form id="form1" runat="server">
    <div>
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr style="font-size: 50pt;">
                <td style="width: 25%;">
                    <a href="www.baidu.com" style="text-decoration: none;"><span style="color: #0066CC;">
                        <</span>&nbsp;<span style="font-size: 40pt; color: #CE0000;">返回</span></a>
                </td>
                <td align="center" style="width: 50%;">
                    <span>会议室预订</span>
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
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr style="font-size: 40pt;">
                <td style="width: 10%;">
                    <a href="www.baidu.com" style="text-decoration: none;"><span style="color: #0066CC;">
                        <</span></a>
                </td>
                <td align="center" style="width: 80%;">
                    <span>本周 10日 - 16日</span>
                </td>
                <td style="width: 10%;">
                    <a href="www.baidu.com" style="text-decoration: none;"><span style="color: #0066CC;">
                        ></span></a>
                </td>
            </tr>
        </table>
    </div>
    <div style="background-color: #CCC;">
        <table id="Tbl1" border="" style="width: 100%; border-collapse: inherit;" cellpadding="1"
            cellspacing="1">
            <thead id="THead">
            </thead>
            <tbody id="TBody" align="center">
            </tbody>
        </table>
    </div>
    <%--<br />
    <div>
        <table id="Table1" border="1" style="width: 100%;" cellpadding="3" cellspacing="1">
            <thead>
                <tr style="height: 100px; font-size: 30pt;">
                    <th style="background-color: Red; border-width: 6px;">
                        <p style="color: White;">
                            10月</p>
                    </th>
                    <th style="background-color: Gray; border-width: 6px;">
                        <p style="color: White;">
                            11日</p>
                    </th>
                    <th style="background-color: Gray; border-width: 6px;">
                        <p style="color: White;">
                            12日</p>
                    </th>
                    <th style="background-color: Gray; border-width: 6px;">
                        <p style="color: White;">
                            13日</p>
                    </th>
                    <th style="background-color: Gray; border-width: 6px;">
                        <p style="color: White;">
                            14日</p>
                    </th>
                    <th style="background-color: Gray; border-width: 6px; border-left-color: Red; border-right-color: Red;">
                        <p style="color: White;">
                            15日</p>
                    </th>
                    <th style="background-color: Gray;">
                        <p style="color: White;">
                            16日</p>
                    </th>
                    <th style="background-color: Gray;">
                        <p style="color: White;">
                            17日</p>
                    </th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>--%>
    </form>
    <script type="text/javascript" language="javascript">

        // 模拟服务器端抛出数据
        // 头部第一行，日期；
        var vDate = ["11月", "11日", "12日", "13日", "14日", "15日", "16日", "17日"];
        // 头部第二行，星期；
        var vDay = ["会议室", "一", "二", "三", "四", "五", "六", "日"];
        // 当前天（周一至周日：1--7；）
        var vCurrDay = 4;

        // 详细数据
        var vRoom_List = [["503", "1", "0", "0", "1", "1", "0", "1"],
                            ["505", "1", "0", "0", "1", "1", "2", "1"],
                            ["701", "0", "1", "0", "1", "0", "0", "1"],
                            ["808", "0", "1", "2", "1", "1", "0", "1"],
                            ["810", "0", "0", "0", "0", "2", "0", "0"],
                            ["1103", "0", "2", "1", "1", "0", "0", "0"],
                            ["1205", "1", "0", "0", "1", "1", "1", "0"]];

        function InitTable() {
            CreateHeader();
            CreateBody();
        }

        function CreateHeader() {
            var vHead = document.getElementById("THead");

            var vTr_Date = document.createElement("TR");
            // vTr_Date.style.height = "60px";
            vTr_Date.style.fontSize = "30pt";

            var vTh_Date;
            var vP_Date;
            for (var i = 0; i < vDate.length; i++) {
                vTh_Date = document.createElement("TH");
                //                vTh_Date.style.borderWidth = "4px";
                if (i == 0) {
                    vTh_Date.style.fontSize = "35pt";
                    vTh_Date.style.backgroundColor = "#930000";
                }
                else {
                    vTh_Date.style.backgroundColor = "Gray";
                }

                if (i == vCurrDay) {
                    vTh_Date.style.backgroundColor = "#4F4F4F";
                    SetCurrDay(vTh_Date);
                }

                vP_Date = document.createElement("P");
                vP_Date.style.color = "White";
                vP_Date.appendChild(document.createTextNode(vDate[i]));
                vTh_Date.appendChild(vP_Date);
                vTr_Date.appendChild(vTh_Date);
            }

            var vTr_Day = document.createElement("TR");
            // vTr_Day.style.height = "40px";
            vTr_Day.style.fontSize = "25pt";

            var vTh_Day;
            var vP_Day;
            for (var i = 0; i < vDay.length; i++) {
                vTh_Day = document.createElement("TH");
                //                vTh_Day.style.borderWidth = "2px";

                if (i == 0) {
                    vTh_Day.style.backgroundColor = "#FFF4C1";
                }
                else {
                    vTh_Day.style.backgroundColor = "#E0E0E0";
                }

                vP_Day = document.createElement("P");
                vP_Day.appendChild(document.createTextNode(vDay[i]));

                if (i == vCurrDay) {
                    vP_Day.style.color = "White";
                    vTh_Day.style.backgroundColor = "#7B7B7B";
                    SetCurrDay(vTh_Day);
                }

                vTh_Day.appendChild(vP_Day);
                vTr_Day.appendChild(vTh_Day);
            }

            vHead.appendChild(vTr_Date);
            vHead.appendChild(vTr_Day);
        }

        function CreateBody() {
            var vBody = document.getElementById("TBody");

            var vTr_Rows;
            var vTd_Room;
            var vTd_Cell;
            var vRoom;
            for (var i = 0; i < vRoom_List.length; i++) {
                vRoom = eval(vRoom_List[i]);
                vTr_Rows = document.createElement("TR");
                vTr_Rows.style.height = "140px";

                // 503
                vTd_Room = document.createElement("TD");
                vTd_Room.style.backgroundColor = "#FFF4C1";
                vTd_Room.style.fontSize = "33pt";
                //                vTd_Room.style.borderWidth = "2px";

                //                if (i == 0) {
                //                    vTh_Day
                //                }
                //                else {
                //                    vTh_Day.style.backgroundColor = "#E0E0E0";
                //                }

                vTd_Room.appendChild(document.createTextNode(vRoom[0]));
                vTr_Rows.appendChild(vTd_Room);

                // 每个数据单元格，一周数据。
                // for (var j = 1; j < vRoom.length; j++) {
                for (var j = 1; j <= 7; j++) {
                    vTd_Cell = document.createElement("TD");
                    //                    vTd_Cell.style.borderWidth = "1px";

                    if (j == vCurrDay)
                        SetCurrDay(vTd_Cell);

                    if (vRoom[j] == "1")
                        vTd_Cell.className = "G1";
                    else if (vRoom[j] == "2")
                        vTd_Cell.style.backgroundColor = "#EA7500";
                    else
                        vTd_Cell.style.backgroundColor = "White";
                    vTr_Rows.appendChild(vTd_Cell);
                }

                vBody.appendChild(vTr_Rows);
            }

        }

        function SetCurrDay(obj) {
            //            obj.style.borderLeftWidth = obj.style.borderRightWidth = "3px";
            //            obj.style.borderLeftColor = obj.style.borderRightColor = "#FFA042";
        }

    </script>
</body>
</html>
