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
                            <p class="username">${employee.name} ${employee.surname} </p>
                        </div>
                    </div>
                    <hr>
                </div>
                <div class="col-2">
                    <div class="row justify-content-center">

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
                            <p class="info">${employee.birthday}</p>
                            <p class="caption">Профессиональные навыки</p>
                            <p class="">${employee.skills}</p>
                            <p class="caption">Образование</p>
                            <p class="info">${employee.education}</p>
                            <p class="caption">Опыт работы</p>
                            <p class="info">${employee.experience}</p>
                        </div>
                    </div>
                </div>



            </div>
        </div>
        </div>
    </section>
</@c.page>