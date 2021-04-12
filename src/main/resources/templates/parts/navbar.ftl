<#include  "security.ftl">

<header>
    <nav class="navbar navbar-expand-lg ">
        <div class="container">
            <a class="navbar-brand " href="/">DiplomaProject</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto mb-2 mb-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/">Главная</a>
                    </li>
                    <#if !Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item" >
                        <a class="nav-link" href="/registration">Регистрация</a>
                    </li>
                    </#if>
                    <#if !Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Войти</a>
                    </li>
                    </#if>
                    <#if isTarget && Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item">
                        <a class="nav-link" href="/vacancy">Вакансии</a>
                    </li>
                    </#if>
                    <#if !isTarget && Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item ">
                        <a class="nav-link" href="/employeeList">Сотрудники</a>
                    </li>
                    </#if>

                    <#if !isTarget && Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item ">
                        <a class="nav-link" href="/notifications">Уведомления</a>
                    </li>
                    </#if>
                    <#if Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item ">
                        <a class="nav-link" href="/profile">Профиль</a>
                    </li>
                    </#if>
                    <#if Session.SPRING_SECURITY_CONTEXT??>
                    <li class="nav-item ">
                    <form action="/logout" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <input class="btn btn-primary" type="submit" value="Выйти"/>
                    </form>
                    </li>
                    </#if>
                </ul>
            </div>
        </div>
    </nav>
</header>