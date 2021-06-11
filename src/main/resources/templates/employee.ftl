<#import "parts/common.ftl" as c>
<link rel="stylesheet" type="text/css" href="/static/coWorker.css">

<@c.page>
    <section class="section">
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <form class="d-flex" action="/employeeSearch" method="get">
                        <input class="form-control mr-2" name="keyword" value="${keyword}" type="search"
                               placeholder="Поиск сотрудников" aria-label="Search">
                        <button class="btn btn-primary" type="submit">Поиск сотрудников</button>
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
                        <div class="coWorker-list">

                            <#list employeeList as employee>
                                <div class="coWorker-info border">
                                    <h3 class="coWorker-name"><a href="/aboutEmployee/${employee.id}"
                                                                 class="">${employee.name} ${employee.surname}</a></h3>
                                </div>


                            <#else>
                                Сотрудников нет
                            </#list>

                        </div>
                    </div>
                </div>


            </div>
        </div>

    </section>
</@c.page>