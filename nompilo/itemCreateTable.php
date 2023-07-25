<?php

	include 'DBConn.php';
	$file= fopen("itemData.txt","r");

	//Checks if the table exists if exists deletes it
	$checkIfTableExist="DROP TABLE IF EXISTS `tbl_item`;";
	$createTable="CREATE TABLE IF NOT EXISTS `tbl_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` text NOT NULL,
  `picture` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;";
	$conn->query($checkIfTableExist);
	$conn->query($createTable);
	while (!feof($file)) {
		$content=fgets($file);
		$carray=explode(",",$content);
		list($id,$name,$description,$price,$picture)=$carray;
		

		

		$sql="INSERT INTO `tbl_item` (`id`, `name`, `description`, `price`, `picture`) VALUES (NULL, '$name', '$description', '$price', '$picture')";
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