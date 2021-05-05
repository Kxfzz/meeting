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
                会议预定 > 添加会议室
            </div>
            <form action="/admin/doAddMr" method="post">
                <fieldset>
                    <legend>会议室信息</legend>
                    <table class="formtable">
                        <div class="form-group">
                            <label for="roomnumber" class="col-sm-2 control-label">门牌号:</label>
                            <div class="col-sm-10">
                                <input type="text" style="width: 50%" name="roomnum" class="form-control"
                                       id="roomnumber" placeholder="例如：201">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="capacity" class="col-sm-2 control-label">会议室名称:</label>
                            <div class="col-sm-10">
                                <input type="text" style="width: 50%" name="roomname" class="form-control"
                                       id="capacity" placeholder="例如：第一会议室">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="roomcapacity" class="col-sm-2 control-label">最多容纳人数:</label>
                            <div class="col-sm-10">
                                <input type="text" style="width: 50%" name="capacity" class="form-control"
                                       id="roomcapacity" placeholder="填写一个正整数">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="status" class="col-sm-2 control-label">当前状态：</label>
                            <div class="col-sm-10">
                                <input type="radio" id="status" name="status" checked="checked" value="0"/><label
                                        for="status">启用</label>
                                <input type="radio" id="status" name="status" value="1"/><label for="status" value="1">已占用</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="description" class="col-sm-2 control-label">备注：</label>
                            <div class="col-sm-10">
                                <textarea name="description" class="form-control" id="description" maxlength="200"
                                          rows="5" cols="60"
                                          placeholder="200字以内的文字描述"></textarea>
                            </div>
                        </div>
                        <tr>
                            <td colspan="2" class="command">
                                <input type="submit" value="添加" class="clickbutton btn btn-primary"/>
                                <input type="reset" value="重置" class="clickbutton btn btn-default"/>
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