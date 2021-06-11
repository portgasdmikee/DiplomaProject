<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/vacancy.css">

<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <form class="d-flex" action="/vacancySearch" method="get">
                        <input class="form-control mr-2" name="keyword" value="${keyword}"  type="text" placeholder="Поиск вакансии" aria-label="Search">
                        <button class="btn btn-primary" type="submit">Поиск вакансий</button>

                    </form>
                </div>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="row">

                <div class="col-2">
                    <div class="row justify-content-center">
                    </div>
                </div>

                <div class="col-6">
                    <div class="row">
                        <div class="vacancy-list">

                                <#list vacancyList as vacancy>
                                <div class="vacancy-info border">
                                    <h3 class="vacancy-name"><a href="/aboutVacancy/${vacancy.id}" class="">${vacancy.name}</a></h3>
                                    <h6 class="company-name"><a href="/aboutCompany/${vacancy.companyProfile.id}">${vacancy.companyProfile.name}</a></h6>
                                    <p class="city-name">${vacancy.companyProfile.city}</p>
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