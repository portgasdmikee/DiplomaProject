<header>
    <nav class="navbar navbar-expand-lg ">
        <div class="container">
            <a class="navbar-brand " href="/">DiplomaProject</a>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto mb-2 mb-lg-0 ">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/registration">Регистрация</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/login">Войти</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/vacancy">Вакансии</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/employee">Сотрудники</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#">Уведомления</a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="/profile">Профиль</a>
                    </li>
                    <li class="nav-item ">
                    <form action="/logout" method="post">
                        <input type="hidden" name="_csrf" value="${_csrf.token}" />
                        <input type="submit" value="Выйти"/>
                    </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>