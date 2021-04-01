<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/profile.css">
<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-md-offset-3">
                    <div class="form">
                        <h1 class="intro1">Создание новой вакансии</h1>
                        <form action="/newVacancy" method="post">

                            <div class="mb-3">
                                <label class="form-label">Название вакансии:</label>
                                <input type="text" name="name" class="form-control" >
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Требования: </span>
                                <textarea class="form-control" name="requirement" aria-label="With textarea"></textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Обязанности:</span>
                                <textarea class="form-control" name="duty" aria-label="With textarea"></textarea>
                            </div>

                            <div class="input-group mb-3">
                                <span class="input-group-text">Условия:</span>
                                <textarea class="form-control" name="conditions" aria-label="With textarea"></textarea>
                            </div>
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>


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