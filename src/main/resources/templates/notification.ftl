<#import "parts/common.ftl" as c>

<@c.page>

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
                        <#list notifications as notification>
                        <div class="vacancy-info border">
                            <h2 class="vacancy-name">На вашу вакансию откликнулись!</h2>
                            <h3 class="vacancy-name"><a href="/aboutVacancy/${notification.vacancyId.id}" >Вакансия: ${notification.vacancyId.name}</a></h3>
                            <h6 class="company-name"><a href="/aboutEmployee/${notification.profileId.id}" >Имя: ${notification.profileId.name} ${notification.profileId.surname}</a></h6>
                            <p class="city-name">Дата отклика: ${notification.date}</p>
                        </div>

                        <#else>
                            Уведомлений нет
                        </#list>
                    </div>
                </div>
            </div>



        </div>
    </div>
    </div>
</section>
</@c.page>
