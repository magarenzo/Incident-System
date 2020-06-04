<html>
<head>
    <title>Incident System</title>
</head>
<body>
    <h1>View an Incident's Full History</h1>
    <hr>
    <form>
	<table>
	    <tr>
		<td>Enter an incident_id (1, 2, or 3):</td>
	    </tr>
	    <tr>
		<td><input type="text" size="20" name="incidentid"></td>
	    </tr>
            <tr>
	        <td><input type="submit"></td>
	    </tr>
	</table>
    </form>
    <?php
	try {
	    $dbh = new PDO('pgsql:dbname=michaelagarenzo');
	} // end try
	catch (PDOException $e) {
	    print "Error: ".$e->getMessage();
	    die();
	} // end catch
	if (array_key_exists('incidentid', $_REQUEST)) {
	    $st = $dbh->prepare("SELECT * FROM report WHERE incidentid=?");
	    $st->bindParam(1, $_REQUEST['incidentid']);
	} // end if
	else {
	    $st = $dbh->prepare("");
	} // end else
	$res = $st->execute();
	echo '<pre>';
	echo '<table class="report" border="1">';
	while ($row = $st->fetch()) {
	    foreach ($row as $key=>$value) {
		echo '<td>'.$key.'</td>';
	    } // end foreach
	    echo '</tr>';
	    echo '<tr>';
	    foreach ($row as $key=>$value) {
		echo '<td>'.$value.'</td>';
	    } // end foreach
	} // end while
	    echo '</tr>';
	    echo '</table>';
	    echo '</pre>';
	$dbh = null;
    ?>
</body>
</html>
<style>
body {
  background-color: yellow;
}
.report {
  background-color: white;
}
</style>
