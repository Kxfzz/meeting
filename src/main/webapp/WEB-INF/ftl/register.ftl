<!DOCTYPE html>
<html>
<head>
    <title>Meeting会议管理系统</title>
    <link rel="stylesheet" href="/styles/common.css"/>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

    </style>
</head>
<body>
<div class="container">
    <#include 'top.ftl'>
    <div class="page-body">
        <#include 'leftMenu.ftl'>
        <div class="page-content">
            <div class="content-nav">
                人员管理 > 员工注册
            </div>
            <form class="form-horizontal" action="/doReg" method="post">
                <fieldset>
                    <legend>员工信息</legend>
                    <#if error??>
                        <div class="alert alert-danger" role="alert">${error!''}</div>
                    </#if>
                    <table class="formtable" style="width:50%">
                        <div class="form-group">
                            <label for="employeename" class="col-sm-2 control-label">姓名：</label>
                            <div class="col-sm-10">
                                <input style="width: 50%" type="text"
                                       value="<#if employee??>${employee.employeeName}</#if>"
                                       name="employeeName" class="form-control" id="employeename" placeholder="姓名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="accountname" class="col-sm-2 control-label">账户名：</label>
                            <div class="col-sm-10">
                                <input style="width: 50%" type="text" value="<#if employee??>${employee.username}</#if>"
                                       name="username" class="form-control" id="accountname" placeholder="账户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">密码：</label>
                            <div class="col-sm-10">
                                <input style="width: 50%" type="password"
                                       name="password" class="form-control" id="password" placeholder="请输入6位以上的密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="confirm" class="col-sm-2 control-label">确认密码：</label>
                            <div class="col-sm-10">
                                <input style="width: 50%" type="password" onchange="check()"
                                       name="password" class="form-control" id="confirm" placeholder="确认密码">
                            </div>
                            <div style="text-align: center; color: red" id="confirmInfo"></div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-2 control-label">联系电话：</label>
                            <div class="col-sm-10">
                                <input style="width: 50%" type="text" value="<#if employee??>${employee.phone}</#if>"
                                       name="phone" class="form-control" id="phone" placeholder="联系电话">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">电子邮件：</label>
                            <div class="col-sm-10">
                                <input type="text" style="width: 50%" value="<#if employee??>${employee.email}</#if>"
                                       name="email" class="form-control" id="email" placeholder="电子邮件">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">所在部门：</label>
                            <div class="col-sm-10">
                                <select style="width: 50%" class="form-control" name="departmentId">
                                    <#if deps??>
                                        <#list deps as dep>
                                            <option value="${dep.departmentId}">${dep.departmentName}</option>
                                        </#list>
                                    </#if>
                                </select>
                            </div>
                        </div>
                        <tr>
                            <td colspan="6" class="command">
                                <input type="submit" class="clickbutton" value="注册"/>
                                <input type="reset" class="clickbutton" value="重置"/>
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

<script>
    function check() {
        var password = document.getElementById('password');
        var confirm = document.getElementById('confirm');
        var confirmInfo = document.getElementById('confirmInfo');
        if (password.value != confirm.value) {
            confirmInfo.innerHTML = '两次输入密码不一致';
        } else {
            confirmInfo.innerHTML = '';
        }
    }
</script>

</body>
</html>