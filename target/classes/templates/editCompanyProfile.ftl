<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/profile.css">

<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-3">
                    <div class="form">
                        <h1 class="intro1">Редактирование профиля компании</h1>
                        <form action="/editCompanyProfile" method="post">

                            <div class="mb-3">
                                <label class="form-label">Email адрес</label>
                                <input type="email" name="email" value="${user.email}" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Название компании</label>
                                <input type="text" name="name" value="${user.companyProfile.name?ifExists} class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Город</label>
                                <input type="text" name="city" value="${user.companyProfile.city?ifExists} class="form-control">
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Сферы деятельности</span>
                                <textarea name="activity" class="form-control" value="${user.companyProfile.activity?ifExists} aria-label="With textarea"></textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Информация о компании</span>
                                <textarea name="info" class="form-control" value="${user.companyProfile.info?ifExists} aria-label="With textarea"></textarea>
                            </div>


                            <div class="input-group mb-3">
                                <label class="input-group-text" for="inputGroupFile01">Загрузить фото</label>
                                <input type="file" class="form-control" id="inputGroupFile04"
                                       aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">
                                    Загрузить
                                </button>
                            </div>

                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                            <input type="hidden" name="companyProfileId" value="${user.companyProfile.id?ifExists}"/>
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