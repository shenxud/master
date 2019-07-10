<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactsPerson.aspx.cs"
    Inherits="Demo1.ContactsPerson" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<body onload="InitTable();">
    <form id="form1" runat="server">
    <div>
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr style="font-size: 50pt;">
                <td style="width: 25%;">
                    <a href="ContactsDepart.aspx" style="text-decoration: none;"><span style="color: #0066CC;">
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
        <table border="1" style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr align="center" style="font-size: 50pt;">
                <td style="width: 50%;" onclick="GoDepart();">
                    <span>部门</span>
                </td>
                <td style="width: 50%; background-color: #930000;">
                    <span style="color: White;">人员</span>
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
        <table style="height: 100px; width: 100%; background-color: #E0E0E0;">
            <tr>
                <td style="width: 2%;">
                </td>
                <td align="center" style="width: 78%;">
                    <%--<input type="text" id="txtSearch" placeholder="请输入人员姓名..." autofocus x-webkit-speech  style="width: 95%; height: 72px;
                        font-size: xx-large;" />--%>
                    <input type="search" id="txtSearch" placeholder="请输入人员姓名..." style="width: 95%; height: 72px;
                        font-size: xx-large;" />
                    <%--<input type="date" id="txtSearch" placeholder="请输入人员姓名..." autofocus x-webkit-speech
                        style="width: 95%; height: 72px; font-size: xx-large;" />--%>
                </td>
                <td align="center" style="width: 20%;">
                    <img src="Images/Search.ico" style="width: 72px; height: 72px;" />
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
            </thead>
            <tbody id="TBody" align="center">
            </tbody>
        </table>
    </div>
    </form>
    <script type="text/javascript" language="javascript">

        // 获取URL参数
        function GetUrlPara() {
            var url = document.URL;
            var para = "";

            if (url.lastIndexOf("?") > 0) {
                para = url.substring(url.lastIndexOf("?") + 1, url.length);
                var arr = para.split("&");
                para = "";
                for (var i = 0; i < arr.length; i++) {
                    // para += "第" + (i + 1) + "个参数>>名:" + arr[i].split("=")[0];
                    // para += " 值:" + arr[i].split("=")[1] + "<br>";
                    para = arr[i].split("=")[1];
                }
            }

            return para;
        }


        // 头部
        var vTitle_List = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
        // var vTitle_List = ["A", "B", "C", "D", "E", "F", "G", "H", "P"];

        // 明细数据
        var vData_List = [["A", "Amanda", "1"],
                        ["A", "Ashley", "2"],
                        ["A", "Albert", "3"],
                        ["A", "Andy", "4"],
                        ["B", "Brittany", "5"],
                        ["B", "Bob", "3"],
                        ["B", "Barbara", "7"],
                        ["B", "Benjamin ", "8"],
                        ["B", "Bill", "3"],
                        ["C", "Cindy", "9"],
                        ["C", "Charles", "11"],
                        ["C", "Charlie", "9"],
                        ["C", "Carol", "1"],
                        ["C", "Caroline", "11"],
                        ["C", "Christina", "1"],
                        ["D", "Diana", "2"],
                        ["D", "Dean", "2"],
                        ["D", "Doris", "3"],
                        ["E", "Elizabeth", "4"],
                        ["F", "Fiona", "5"],
                        ["F", "Francis", "6"],
                        ["G", "Gary", "7"],
                        ["G", "George", "8"],
                        ["G", "Gloria", "9"],
                        ["G", "Grace", "10"],
                        ["G", "General Accounting", "11"],
                        ["H", "Howard Allen", "13"],
                        ["P", "Paul", "14"],
                        ["P", "Peter ", "15"],
                        ["R", "Rudy", "16"]];

        function InitTable() {
            ReDoDataList();
            ReDoTitleList();
            CreateBody();
        }

        function ReDoDataList() {
            var vDepartID = GetUrlPara();
            if (vDepartID != "") {
                var vData_List_ByDepart = new Array();
                for (var i = 0; i < vData_List.length; i++) {
                    if (vDepartID == vData_List[i][2]) {
                        vData_List_ByDepart.push(vData_List[i]);
                    }
                }
                if (vData_List_ByDepart.length > 0) {
                    vData_List = vData_List_ByDepart;
                }
            }
        }

        function ReDoTitleList() {
            var vDepartID = GetUrlPara();
            if (vDepartID != "") {
                var vCount = 0;
                var vTitle_List_ByDepart = new Array();
                for (var i = 0; i < vTitle_List.length; i++) {
                    for (var j = 0; j < vData_List.length; j++) {
                        if (vTitle_List[i] == vData_List[j][0]) {
                            vTitle_List_ByDepart[vCount] = vTitle_List[i];
                            vCount++;
                            break;
                        }
                    }
                }

                if (vTitle_List_ByDepart.length > 0) {
                    vTitle_List = vTitle_List_ByDepart;
                }
            }


        }

        function CreateBody() {
            var vBody = document.getElementById("TBody");

            var vTr_Title_Row;
            var vTh1; var vTh2; var vTh3;

            var vTr_Data_Row;
            var vTd1; var vTd2; var vTd3;
            var vAHref;

            var vTr_Line_Row;
            var vHR;

            var vTitle;
            var vDatas;

            for (var i = 0; i < vTitle_List.length; i++) {
                vTitle = vTitle_List[i];

                vTr_Title_Row = document.createElement("TR");
                vTr_Title_Row.style.fontSize = "35pt";

                vTh1 = document.createElement("TH");
                vTh1.style.width = "4%";
                vTr_Title_Row.appendChild(vTh1);

                vTh2 = document.createElement("TH");
                vTh2.align = "left";
                vTh2.appendChild(document.createTextNode(vTitle));
                vTr_Title_Row.appendChild(vTh2);

                vTh3 = document.createElement("TH");
                vTr_Title_Row.appendChild(vTh3);

                vBody.appendChild(vTr_Title_Row);


                for (var j = 0; j < vData_List.length; j++) {
                    // 两个数组Title相同
                    vDatas = eval(vData_List[j]);
                    vTr_Data_Row = document.createElement("TR");
                    vTr_Data_Row.style.fontSize = "40pt";
                    vTr_Data_Row.style.height = "120px";
                    if (vTitle == vDatas[0]) {
                        vTd1 = document.createElement("TD");
                        vTd1.style.width = "4%";
                        vTr_Data_Row.appendChild(vTd1);

                        vTd2 = document.createElement("TD");
                        vTd2.align = "left";
                        vTd2.appendChild(document.createTextNode(vDatas[1]));
                        vTr_Data_Row.appendChild(vTd2);

                        vTd3 = document.createElement("TD");
                        vAHref = document.createElement("A");
                        // vAHref.href = "#";
                        // vAHref.href = "ContactsPerson.aspx?DepartID=" + vDatas[2];
                        vAHref.style.textDecoration = "none";
                        vAHref.style.color = "#CCC";
                        vAHref.appendChild(document.createTextNode(">"));
                        vTd3.appendChild(vAHref);
                        vTr_Data_Row.appendChild(vTd3);

                        // DepartID
                        vTr_Data_Row.setAttribute("value", vDatas[2]);

                        vTr_Data_Row.onclick = function () { GoPersonDetail(this); };
                        // vTr_Data_Row.onclick = function () { javascript: alert(vDatas[2]) };

                        vBody.appendChild(vTr_Data_Row);

                        if (j <= vData_List.length && vTitle == vData_List[j + 1][0]) {
                            vTr_Line_Row = document.createElement("TR");
                            vTd1 = document.createElement("TD");
                            vTd1.style.width = "4%";
                            vTr_Line_Row.appendChild(vTd1);

                            vTd2 = document.createElement("TD");
                            vTd2.setAttribute("colspan", "2");
                            vHR = document.createElement("HR");
                            vHR.size = "3";
                            vTd2.appendChild(vHR);
                            vTr_Line_Row.appendChild(vTd2);

                            vBody.appendChild(vTr_Line_Row);
                        }
                    }

                }

            }
        }

        function GoPersonDetail(vDepartID) {
            location.href = "ContactsDetail.aspx?PersonID=" + vDepartID.getAttribute("value");
        }

        function GoDepart() {
            location.href = "ContactsDepart.aspx";
        }

    </script>
</body>
</html>
