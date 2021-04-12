<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/profile.css">
<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-3">
                    <div class="form">
                        <h1 class="intro1">Редактирование профиля</h1>

                        <form action="/editProfile" method="post">

                            <div class="mb-3">
                                <label class="form-label">Email адрес</label>
                                <input name="email" type="email" class="form-control" value="${user.email}">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Имя</label>
                                <input name="name" type="text" class="form-control"
                                       value="${user.profile.name?ifExists}">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Фамилия</label>
                                <input name="surname" type="text" class="form-control"
                                       value="${user.profile.surname?ifExists}">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Дата рождения</label>
                                <input type="text" name="birthday" class="form-control"
                                       value="${user.profile.birthday?ifExists}">
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Профессиональные навыки</span>
                                <textarea class="form-control" aria-label="With textarea"
                                          name="skills">${user.profile.skills?ifExists}</textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Образование</span>
                                <textarea class="form-control" aria-label="With textarea"
                                          name="education">${user.profile.education?ifExists}</textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Опыт работы</span>
                                <textarea class="form-control" aria-label="With textarea"
                                          name="experience">${user.profile.experience?ifExists}</textarea>
                            </div>



                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="hidden" name="profileId" value="${user.profile.id?ifExists}"/>
                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary">Сохранить изменения</button>
                            </div>

                        </form>


                    </div>
                </div>
            </div>
        </div>
    </section>

</@c.page>