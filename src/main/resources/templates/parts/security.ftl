<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    isTarget = user.isTarget()
    >
<#else >
    <#assign
    isTarget = false
    >
</#if>