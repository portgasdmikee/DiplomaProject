<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/vacancy.css">

<@c.page>
<section class="section">
    <div class="container">
        <div class="row">
            <div class="col">
                <h3>${message}</h3>
            </div>
        </div>
        <div class="row">

            <div class="col-2">
                <div class="row justify-content-center">
                </div>
            </div>

            <div class="col-6">
                <div class="row">
                    <div class="vacancy-list">

                        <div class="vacancy-info border">
                            <h3 class="vacancy-name">${vacancy.name}</h3>
                            <h6 class="company-name"><a href="companyProfile.html" >${vacancy.companyProfile.name}</a></h6>
                            <p class="city-name">${vacancy.companyProfile.city}</p>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-4">
                <div class="row justify-content-center">
                    <div class="button">
                        <#if !myPage>
                        <form action="/addNotification" method="post">
                        <button type="submit" class="btn btn-outline-primary btn-lg">Откликнуться</button>
                            <input type="hidden" name="vacancyId"  value="${vacancy.id}"/>
                            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                        </form>
                        </#if>
                    </div>
                </div>
            </div>


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
                    <div class="profile-info">
                        <p class="caption">Требования: </p>
                        <p class="info">${vacancy.requirement}</p>
                        <p class="caption">Обязанности: </p>
                        <p class="info">${vacancy.duty}</p>
                        <p class="caption">Условия: </p>
                        <p class="">${vacancy.conditions}</p>

                    </div>
                </div>
            </div>



        </div>
    </div>
    </div>
</section>
</@c.page>