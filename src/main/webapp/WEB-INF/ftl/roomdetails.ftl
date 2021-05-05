<!DOCTYPE html>
<html>
<head>
    <title>Meeting会议管理系统</title>
    <link rel="stylesheet" href="/styles/common.css"/>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <#include 'top.ftl'>
    <div class="page-body">
        <#include 'leftMenu.ftl'>
        <div class="page-content">
            <div class="content-nav">
                会议预定 > 修改会议室信息
            </div>
            <form action="/updateroom" method="post" class="form-horizontal">
                <fieldset>
                    <legend>会议室信息</legend>
                    <table class="formtable">
                        <div class="form-group">
                            <label for="roomnumber" class="col-sm-2 control-label">门牌号:</label>
                            <div class="col-sm-10">
                                <input name="roomnum" style="width: 50%" value="${mr.roomnum}" type="text"
                                       class="form-control" id="roomnumber" placeholder="门牌号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="capacity" class="col-sm-2 control-label">会议室名称:</label>
                            <div class="col-sm-10">
                                <input name="roomname" style="width: 50%" value="${mr.roomname}" type="text"
                                       class="form-control" id="capacity" placeholder="会议室名称">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="roomcapacity" class="col-sm-2 control-label">最多容纳人数:</label>
                            <div class="col-sm-10">
                                <input name="capacity" style="width: 50%" value="${mr.capacity}" type="text"
                                       class="form-control" id="roomcapacity" placeholder="最多容纳人数">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="status" class="col-sm-2 control-label">当前状态:</label>
                            <div class="col-sm-10">
                                <#if mr.status==0>
                                    <input type="radio" id="status" name="status" checked="checked" value="0"/><label
                                        for="status">启用</label>
                                    <input type="radio" id="status" value="1" name="status"/><label for="status"
                                                                                                    value="1">已占用</label>
                                <#else >
                                    <input type="radio" id="status" name="status" value="0"/><label
                                        for="status">启用</label>
                                    <input type="radio" id="status" name="status" value="1" checked="checked"/><label
                                        for="status"
                                        value="1">已占用</label>
                                </#if>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">备注：</label>
                            <div class="col-sm-10">
                                <textarea name="description" id="description" class="form-control" maxlength="200"
                                          rows="5"
                                          cols="60">${mr.description}</textarea>
                            </div>
                        </div>
                        <tr>
                            <td colspan="2" class="command">
                                <input type="hidden" value="${mr.roomid}" name="roomid">
                                <input type="submit" value="确认修改" class="clickbutton btn btn-primary"/>
                                <input type="button" class="clickbutton btn btn-default" value="返回"
                                       onclick="window.history.back();"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<div class="page-footer">
    <hr/>
    更多问题，欢迎联系<a href="mailto:578173534@qq.com">管理员</a>
    <img src="/images/footer.png" alt="Meeting"/>
</div>
</body>
</html>