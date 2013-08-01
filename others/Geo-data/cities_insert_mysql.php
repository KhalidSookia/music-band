<?php
set_time_limit ( 0 );
$connect = mysql_connect('localhost','root','');
  if (!$connect) {
  die('Could not connect to MySQL: ' . mysql_error());
  }
    
   $cid =mysql_select_db('band',$connect);
   // supply your database name
   
  define('CSV_PATH','C:/wamp/www/band/others/Geo-data/');
  // path where your CSV file is located
   
  $csv_file = CSV_PATH . "cities.csv"; // Name of your CSV file
  $csvfile = fopen($csv_file, 'r');
  $theData = fgets($csvfile);
  $i = 0;
  while (!feof($csvfile)) {
  $csv_data[] = fgets($csvfile);
  $csv_array = explode(",", $csv_data[$i]);
  $insert_csv = array();
  $insert_csv['c_iso2'] = $csv_array[0];
  $insert_csv['ci_name'] = substr($csv_array[1], 0, -2);


  $query = "INSERT INTO cities(c_iso2,ci_name)
  VALUES('$insert_csv[c_iso2]','$insert_csv[ci_name]')";

  var_dump($query);
  $n=mysql_query($query, $connect );
  $i++;
  echo $i;

  }
  fclose($csvfile);
   
  echo "ok";
  mysql_close($connect);
  ?>
<!-- file downloaded from http://www.computerhope.com/issues/ch001356.htm -->