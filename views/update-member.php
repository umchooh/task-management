<?php
/*Page Title : Update on Member List
 *Objectives: To view the current member(s) involved in selected project. User able to update their role individually.
*/

session_start();

require_once '../Model/ProjectOverview.php';
require_once '../Model/Role.php';
require_once '../Model/Project.php';
require_once '../Model/Member.php';
require_once '../Model/SideBar.php';
require_once '../Model/Database.php';
require_once '../Model/UpcomingDueDates.php';
require_once '../Model/Notifications.php';

require("./partials/footer.php");
require("./partials/header.php");
insertHeader();

//Submit New Changes to DB
if (isset($_POST['Update'])) {
    $flag = true;
    //Extract DAta from url query and from members_table.php
    if(empty($_POST['projectId'])){
        $projectIdErr = "Please input your project name";
        $flag = false;
    } else {
        $project_id = $_POST['projectId'];
    }
    if(empty($_POST['userid'])){
        $addUserErr = "Please select the start date";
        $flag = false;
    } else {
        $userID = $_POST['userid'];
    }
    if(empty($_POST['roleid'] || ($_POST['roleid']== "0") )){
        $roles_err = "please select role for this member";
        $flag = false;
    }else {
        $roleID = ($_POST['roleid']);
    }
    if ($flag) {
        $db = Database::getDb();

        $r = new Role();
        $roles = $r->getAllRoles($db);

        $p = new Project();
        $project_details = $p->getProjectById($project_id, $db);

        $m = new Member();
        $updateUsers = $m->updateMembersInProjectUser($userID, $roleID, $project_id, $db);


        header('Location:list-member.php?id=' . $_POST['projectId']);
    }

}

?>





