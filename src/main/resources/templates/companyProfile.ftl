<#import "parts/common.ftl" as c>

<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-4">
                    <div class="row justify-content-center">
                        <div class="photo-background">
                            <img src="img/work1.png" class="profile-img">
                        </div>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row justify-content-center">
                        <div class="profile-name">
                            <p class="username" >${user.companyProfile.name?ifExists}</p>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="col-2">
                    <div class="row justify-content-center">
                        <div class="button1">
                            <button type="button" class="btn btn-outline-primary"><a href="/editCompanyProfile"
                                                                                              class="edit">Изменить профиль</a>
                            </button>
                        </div>
                        <div class="button1">
                            <button type="button" class="btn btn-outline-primary"><a href="/newVacancy"
                                                                                     class="edit">Добавить вакансию</a>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="row">

                <div class="col-4">
                    <div class="row justify-content-center">
                    </div>
                </div>

                <div class="col-6">
                    <div class="row">
                        <div class="profile-info">
                            <p class="caption">Город</p>
                            <p class="info">${user.companyProfile.city?ifExists}</p>
                            <p class="caption">Сферы деятельности</p>
                            <p class="info">${user.companyProfile.activity?ifExists}</p>
                            <p class="caption">Информация о компании</p>
                            <p class="">${user.companyProfile.info?ifExists}</p>

                            <h2 class="caption">Вакансии компании </h2>
                            <#list user.companyProfile.vacancyList as vacancy>
                            <div class="vacancy-info border">
                                <h3 class="vacancy-name"><a href="aboutVacancy.html" class="">${vacancy.name}</a></h3>
                                <h6 class="company-name"><a href="aboutCompany.html">${user.companyProfile.name}</a></h6>
                                <p class="city-name">${user.companyProfile.city}</p>

                                <form action="/deleteVacancy" method="post">
                                    <button type="submit" >УДАЛИТЬ</button>
                                    <input type="hidden" name="vacancy" value="${vacancy.id}">
                                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                                </form>
                            </div>


                            <#else>
                                Вакансий нет
                            </#list>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        </div>
    </section>
</@c.page>