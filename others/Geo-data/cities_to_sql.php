<?php
set_time_limit ( 0 );
$infile = "cities.txt";
$outfile = "cities.csv";
$rh = fopen($infile, "r");
$wh = fopen($outfile, "w+");

//this has to change because a blank line or a line that is simply '0' will break the loop
while( ($line1 = fgets($rh, 4096000)) !== false ) {
    $line = substr($line1, 0, -2);
    $parts = preg_split('/\s+/', $line, 2); //limit to splitting into TWO parts, state and city.
    $state = $parts[0];
    $city = preg_replace("/'/", '&#39;', $parts[1]); //replace stray apostrophes
    $output = sprintf("%s,%s\r\n", $state, $city);
    fwrite($wh, $output);
}

fclose($rh);
fclose($wh);
echo "ok";















?>
