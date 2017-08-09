<%--
  Created by IntelliJ IDEA.
  User: IMGXD
  Date: 2017/8/2
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<form action="video/add.do" enctype="multipart/form-data" method="post">
    <table border='0' cellpadding='0' cellspacing='0'>
        <tr>
            <td>标题</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>详情</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>标签</td>
            <td><input type="text"></td>
        </tr>
        <tr>
            <td>分类</td>
            <td><input type="text"></td>
        </tr>
        <input id="imageName" type="hidden">
        <input id="videoName" type="hidden">
        <tr>
            <td><input type="submit"></td>
        </tr>
    </table>
</form>
<form action="video/add.do" enctype="multipart/form-data" method="post">
    <tr>
        <td width='90' align='center'>选择视频：</td>
        <td width='160' align='center'>
            <input type="file">
        </td>
        <td><input type="submit"></td>
    </tr>
    <tr>
</form>
<td width='90' align='center'>选择封面：</td>
<td width='160' align='center'>
    <input type="file">
</td>
<td><input type="submit"></td>
</tr>
</form>
