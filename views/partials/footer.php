<?php

// The insertFooter() function creates a footer bar and navigation menu. The function will accept 1 argument as parameter: PNavigation menu items (associative array). If no arguments are supplied, the function will use its own default values. The function outputs the HTML code for the footer.
function insertFooter($navItemsParam = [
    'Privacy Policy' => './privacy.php',
    'Terms and Conditions' => './termsandconditions.php'
    ]) {

    $navItems = $navItemsParam;
    $navListItemsString = '';

    // Create the navigation menu list items HTML code
    foreach ($navItems as $linkName => $Uri) {
        $navListItemsString .= "<li class=\"nav-item\"><a class=\"nav-link\" href=\"$Uri\">$linkName</a></li>";
    }

    echo <<<FOOTER
            <footer id="footer" class="text-center mt-auto position-absolute vw-100 bottom-0">
                <nav class=" navbar-expand-lg fixed bottom">
                    <ul class="nav justify-content-end">
                        $navListItemsString
                    </ul>
                </nav>
                <p>&#169 Copyright 2021, Team C4M.</p>
            </footer>
        </div>
    </body>
    </html>
    FOOTER;

}

?>

