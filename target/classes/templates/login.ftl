<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<link rel="stylesheet" type="text/css" href="/static/registration.css">

<@c.page>
    <#if message??>
        <div class="alert alert-${messageType}" role="alert">
            ${message}
        </div>
    </#if>
    <h1 class="intro1">Вход</h1>
    <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
        <div class="alert alert-danger" role="alert">
            ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
        </div>
    </#if>

    <form action="/login" method="post">
        <div class="mb-3">
            <label class="form-label">Имя пользователя</label>
            <input type="text" name="username" class="form-control" placeholder="Имя пользователя">
        </div>
        <div class="mb-3">
            <label class="form-label">Пароль</label>
            <input type="password" name="password" class="form-control" placeholder="Пароль">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit" class="btn btn-primary">Войти</button>
    </form>
</@c.page>