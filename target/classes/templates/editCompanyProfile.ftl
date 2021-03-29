<#import "parts/common.ftl" as c>

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
                                <input type="email" name="email" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Название компании</label>
                                <input type="text" name="name" class="form-control">
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Город</label>
                                <input type="text" name="city" class="form-control">
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Сферы деятельности</span>
                                <textarea name="activity" class="form-control" aria-label="With textarea"></textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Информация о компании</span>
                                <textarea name="info" class="form-control" aria-label="With textarea"></textarea>
                            </div>


                            <div class="input-group mb-3">
                                <label class="input-group-text" for="inputGroupFile01">Загрузить фото</label>
                                <input type="file" class="form-control" id="inputGroupFile04"
                                       aria-describedby="inputGroupFileAddon04" aria-label="Upload">
                                <button class="btn btn-outline-secondary" type="button" id="inputGroupFileAddon04">
                                    Загрузить
                                </button>
                            </div>

                            <div class="mb-3">
                                <button type="submit" class="btn btn-primary"><a href="editPassword.html"
                                                                                 class="edit">Изменить пароль</a>
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