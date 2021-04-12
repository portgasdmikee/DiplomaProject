<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/profile.css">

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
                            <p class="username">${user.profile.surname?ifExists} ${user.profile.name?ifExists}</p>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="col-2">
                    <div class="row justify-content-center">
                        <div class="button1">
                            <button type="button" class="btn btn-outline-primary"><a href="/editProfile" class="edit">Изменить профиль</a></button>
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
                            <p class="caption">Дата рождения</p>
                            <p class="info">${user.profile.birthday?ifExists}</p>
                            <p class="caption">Профессиональные навыки</p>
                            <p class="">${user.profile.skills?ifExists}</p>
                            <p class="caption">Образование</p>
                            <p class="info">${user.profile.education?ifExists}</p>
                            <p class="caption">Опыт работы</p>
                            <p class="info">${user.profile.experience?ifExists}</p>
                        </div>
                    </div>
                </div>



            </div>
        </div>
        </div>
    </section>
</@c.page>