
<h1 class="center">Projects</h1>
<?php
include "header.php";
	if(!$user->checkLoginStatus()){
		$user->redirect("index.php");
	}
		echo"<h2>Hello {$_SESSION['uname']}</h2>";
		echo "<p>Your role number is {$_SESSION['urole']}</p>";
		echo "<p>Your id number is {$_SESSION['uid']}</p>";
include "footer.php";
?>

<div class="projects">

</div>

