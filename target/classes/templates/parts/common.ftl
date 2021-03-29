<#macro page>
    <!DOCTYPE html>
    <html>
    <head>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="/static/style.css">

        <title>DiplomaProject</title>
    </head>
    <body>
    <#include  "navbar.ftl">
    <#nested >
    <footer class="footer">
        <div class="container">

            <div class="footer_inner">
                <div class="footer_col">
                    <div class="footer_logo">DiplomaProject</div>
                    <div class="footer_text">
                        Находите и привлекайте подходящих кандидатов, создавайте свой бренд и принимайте еще более разумные кадровые решения с помощью DiplomaProject.
                    </div>



                </div><!--footer_col-->
            </div><!-- footer_inner-->

            <div class="copyright">© 2021 site was created by <span>1mlrdbelly</span></div>

        </div><!-- container-->
    </footer><!--footer-->


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>
</#macro>