<?php

	include 'DBConn.php';
	$file= fopen("userData.txt","r");

	//Checks if the table exists if exists deletes it
	$checkIfTableExist="DROP TABLE IF EXISTS `tbl_customer`;";
	$createTable="CREATE TABLE IF NOT EXISTS `tbl_customer` (
				  `id` int(11) NOT NULL AUTO_INCREMENT,
				  `fname` text NOT NULL,
				  `lname` text NOT NULL,
				  `email` text NOT NULL,
				  `password` text NOT NULL,
				  PRIMARY KEY (`id`)
				) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;";
	$conn->query($checkIfTableExist);
	$conn->query($createTable);
	while (!feof($file)) {
		$content=fgets($file);
		$carray=explode(">",$content);
		list($fname,$lname,$email,$password)=$carray;
		$hashedPassword=password_hash(trim(trim(trim($password,"\n"),"\r")," "),PASSWORD_DEFAULT);

		

		$sql="INSERT INTO `tbl_customer` (`id`, `fname`, `lname`, `email`, `password`) VALUES (NULL, '$fname', '$lname', '$email', '$hashedPassword')";
		$conn->query($sql);
	}
	$checkIfTableExist2="DROP TABLE IF EXISTS `tble_admin`;";

	$createTable2="CREATE TABLE IF NOT EXISTS `tble_admin` (
				  `id` int(11) NOT NULL AUTO_INCREMENT,
				  `fname` text NOT NULL,
				  `lname` text NOT NULL,
				  `email` text NOT NULL,
				  `password` text NOT NULL,
				  PRIMARY KEY (`id`)
				) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;";
	$conn->query($checkIfTableExist2);
	$conn->query($createTable2);
	


	fclose($file);
	

?>