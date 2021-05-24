<?php

// The insertSidebar() function creates a sidebar and navigation menu plus related elements. The function will accept 1 argument as parameter: Navigation menu items (associative array). If no arguments are supplied, the function will use its own default values. The function outputs the HTML code for the footer.
function insertSidebar($navItemsParam = ['New Project' => './createproject.php', 
                                        'Search Project' => './searchprojects.php',
                                        'Sidebar Link 1' => './sidebarlink1.php',
                                        'Sidebar Link 2' => './sidebarlink2.php']) {

    $navItems = $navItemsParam;
    $navListItemsString = '';

    // Create the navigation menu list items HTML code
    foreach ($navItems as $linkName => $Uri) {
        $navListItemsString .= "<li><a href=\"$Uri\">$linkName</a></li>";
    }

    echo <<<SIDEBAR
    
    <div class="sidebar">
        <nav id="sidebar" class="navbar navbar-light ">
            <ul class="list-unstyled components nav flex-column">
                $navListItemsString
            </ul>
        </nav>
        <div>
            <p>Todo List Here</p>
        </div>
        <div>
            <p>Put Event Calendar Here</p>
        </div>
    </div>
    
    SIDEBAR;

} 


/*** Unused code kept for reference only, can be deleted later ***/
/*
// The insertSidebar() function creates a sidebar and navigation menu plus related elements. The function will accept 1 argument as parameter: Navigation menu items (associative array). If no arguments are supplied, the function will use its own default values. The function outputs the HTML code for the footer.
function insertSidebar($pageTitleParam = 'Task Management',
                        $navItemsParam = ['New Project' => './createproject.php',
                                        'Search Project' => './searchprojects.php',
                                        'Link 3' => './link3.php',
                                        'Link 4' => './Link4.php',
                                        'Link 5' => './Lnk5.php'],
                       $cssPathParam = '../style/global.css',
                       $jsPathParam = '',
                       $bootstrapCssPathParam = '../css/bootstrap.min.css',
                       $bootstrapJsPathParam = '../js/bootstrap.min.js')  {


    $pageTitle = $pageTitleParam;
    $navItems = $navItemsParam;
    $cssPath = $cssPathParam;
    $jsPath = $jsPathParam;
    $bootstrapCssPath = $bootstrapCssPathParam;
    $bootstrapJsPath = $bootstrapJsPathParam;
    $navListItemsString = '';

        // Create the navigation menu list items HTML code
        foreach ($navItems as $linkName => $Uri) {
            $navListItemsString .= "<li class=\"nav-item \"><a class=\"nav-link\" href=\"$Uri\">$linkName</a></li>";
        }

    echo <<<SIDEBAR
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width">
        <script type="text/javascript" src="$jsPath"></script>
        <link rel="stylesheet" href="$cssPath" />
        <link rel="stylesheet" href="$bootstrapCssPath" />
        <script type="text/javascript" src="$bootstrapJsPath"></script>
        <title>$pageTitle</title>
    </head>
    <<body class="d-flex h-100 text-center">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="nav ">
        <h1><a class="nav-link" href="../../.index.php">
                    C4M
                </a></h1>
    <div class="wrapper">
        <nav id="sidebar" class="navbar navbar-light ">
            <ul class="list-unstyled components nav flex-column">
                $navListItemsString
            </ul>
        </nav>
        <div>
            <p>Todo List Here</p>
        </div>
        <div>
            <p>Put Event Calendar Here</p>
        </div>
        <div>
         <a class="btn btn-secondary btn-lg my-5" href="./index.php" role="button"> Logout</a>
        </div>
    </header>
    
    SIDEBAR;

}
*/

?>
