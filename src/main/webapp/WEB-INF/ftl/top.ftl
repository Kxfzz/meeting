<div class="page-header row">
    <div class="header-banner col-md-4">
        <img src="/images/header.png" alt="Meeting"/>
    </div>
    <div class="header-title col-md-4">
        欢迎访问Meeting会议管理系统
    </div>
    <div class="header-quicklink col-md-4">
        欢迎您，
        <#if currentUser??>
            <#if currentUser.role==2>
                <strong>${currentUser.employeeName!''}-admin</strong>
            <#else >
                <strong>${currentUser.employeeName!''}</strong>
            </#if>
        </#if>
        <a href="/logout" class="btn btn-default btn-xs">[退出]</a>
        <a href="/changepassword" class="btn btn-default btn-xs">[修改密码]</a>
    </div>
</div>