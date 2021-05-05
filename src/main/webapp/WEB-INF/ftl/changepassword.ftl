<!DOCTYPE html>
<html>
<head>
    <title>Meeting会议管理系统</title>
    <link href="/styles/common.css" rel="stylesheet"/>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <#include 'top.ftl'>
    <div class="page-body">
        <#include 'leftMenu.ftl'>
        <div class="page-content">
            <div class="content-nav">
                修改密码
            </div>
            <form class="form-horizontal" action="/dochange" method="post">
                <fieldset>
                    <legend>修改密码信息</legend>
                    <table class="formtable" style="width:50%">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">账号:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" id="username"
                                       placeholder="账号">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">原密码:</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="username" placeholder="原密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new" class="col-sm-2 control-label">新密码:</label>
                            <div class="col-sm-10">
                                <input type="password" name="newpassword" class="form-control" id="new" placeholder="新密码">
                            </div>
                        </div>
                        <#if error??>
                            <div class="alert alert-danger" role="alert">${error!''}</div>
                        </#if>
                        <tr>
                            <td colspan="2" class="command">
                                <input type="submit" value="确认修改" class="clickbutton btn btn-success"/>
                                <input type="button" value="返回" class="clickbutton btn btn-default" onclick="window.history.back();"/>
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