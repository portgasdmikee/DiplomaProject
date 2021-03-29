<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <h1 class="intro1">Регистрация</h1>
    <form action="/registration" method="post">
        <div class="mb-3">
            <label class="form-label">Имя пользователя</label>
            <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                   class="form-control ${(usernameError??)?string('is-invalid', '')}"
                   placeholder="Имя пользователя">
            <#if usernameError??>
                <div class="invalid-feedback">
                    ${usernameError}
                </div>
            </#if>

        </div>
        <div class="mb-3">
            <label class="form-label">Email адрес</label>
            <input type="email" name="email" value="<#if user??>${user.email}</#if>"
                   class="form-control ${(emailError??)?string('is-invalid', '')}"
                   placeholder="some@some.com">
            <#if emailError??>
                <div class="invalid-feedback">
                    ${emailError}
                </div>
            </#if>
        </div>
        <div class="mb-3">
            <label class="form-label">Пароль</label>
            <input type="password" name="password"
                   class="form-control ${(passwordError??)?string('is-invalid', '')}"
                   placeholder="Пароль">
            <#if passwordError??>
                <div class="invalid-feedback">
                    ${passwordError}
                </div>
            </#if>
        </div>
        <div class="mb-3">
            <label class="form-label">Повторите пароль</label>
            <input type="password" name="password2"
                   class="form-control ${(password2Error??)?string('is-invalid', '')}"
                   placeholder="Повторите пароль">
            <#if password2Error??>
                <div class="invalid-feedback">
                    ${password2Error}
                </div>
            </#if>
        </div>
        <div class="form-check mb-3">
            <input class="form-check-input" type="radio" name="target" value="lookingJob">
            <label class="form-check-label" for="target">
                Ищу работу
            </label>
        </div>
        <div class="form-check mb-3">
            <input class="form-check-input" type="radio" name="target" value="lookingEmployees">
            <label class="form-check-label" for="target">
                Ищу сотрудников
            </label>
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-primary">Регистрация</button>
    </form>
</@c.page>