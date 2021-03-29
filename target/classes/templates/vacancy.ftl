<#import "parts/common.ftl" as c>

<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <form class="d-flex">
                        <input class="form-control mr-2" type="search" placeholder="Поиск вакансии" aria-label="Search">
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

                            <div class="vacancy-info border">
                                <h3 class="vacancy-name"><a href="aboutVacancy.html" class="">Java разработчик</a></h3>
                                <h6 class="company-name"><a href="aboutCompany.html" >TOO SlickRick</a></h6>
                                <p class="city-name">Караганда</p>
                            </div>

                            <div class="vacancy-info border">
                                <h3 class="vacancy-name"><a href="#" class="">PYTHON developers team developerы 5kif4a and rinafolk</a></h3>
                                <h6 class="company-name"><a href="#" >TOO SlickRick</a></h6>
                                <p class="city-name">Караганда</p>
                            </div>

                        </div>
                    </div>
                </div>



            </div>
        </div>
        </div>
    </section>
</@c.page>