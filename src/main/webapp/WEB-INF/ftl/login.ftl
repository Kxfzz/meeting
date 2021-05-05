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
                登录
            </div>
            <form action="/doLogin" method="post" class="form-horizontal">
                <fieldset>
                    <legend>登录信息</legend>
                    <table class="formtable" style="width:50%">
                        <div class="form-group">
                            <label for="accountname" class="col-sm-2 control-label">账号名:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="username" id="accountname" placeholder="账号名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="new" class="col-sm-2 control-label">密码:</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" class="form-control" id="new" placeholder="密码">
                            </div>
                        </div>
                        <tr>
                            <td colspan="2" class="command">
                                <input type="submit" value="登录" class="clickbutton btn btn-default"
                                       onclick="window.location.href='notifiactions.html';"/>
                                <input type="button" value="返回" class="clickbutton btn btn-default" onclick="window.history.back();"/>
                            </td>
                        </tr>
                    </table>
                    <#if error??>
                        <div class="alert alert-danger" role="alert">${error!''}</div>
                    </#if>
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