<?php

function fail($errMsg){
  echo '{"result": "error", "message": "'.$errMsg.'"}';
  exit();
}
$cfg = parse_ini_file('cfg.ini');


if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    //we good, lets try take some data
    $json = json_decode(file_get_contents('php://input'));
    
    //lets check if we are expecting it
    if (!isset($json->key)){
      fail('No key provided!');
    }
    if ($json->key!='Spam2468!'){
      fail("Incorrect key provided!");
    }
    if (!isset($json->metadata_emailAddress)){
      fail("No user email provided!");
    }
    //ok lets connect to db

    $conn = pg_connect("host=$cfg[host] port=$cfg[port] dbname=$cfg[database] user=$cfg[user] password=$cfg[password]");

    // check if the connection was successful
    if (!$conn) {
        fail("Failed to connect to database");
        exit;
    } 
    pg_prepare($conn, 'find_user_query', 'SELECT metadata_emailAddress FROM users WHERE metadata_emailAddress = $1');
  
    $res = pg_fetch_all(pg_execute($conn, 'find_user_query', array($json->metadata_emailAddress)));
    if ($res){
      // fail("No user was found with that ID. Would you like to create an account?");
    }
  
    //add a new entry for this day
    $res = pg_prepare($conn, 'add_data_query', 'INSERT INTO uploads (
	"distanceWalkingRunning", "stepCount", "appleExcerciseTime",
	"basalEnergyBurned", "appleStandTime", "activeEnergyBurned",
	"environmentalAudioExposureAvg", "environmentalAudioExposureMin", "environmentalAudioExposureMax",
	"headphoneAudioExposureAvg", "headphoneAudioExposureMin", "headphoneAudioExposureMax",
	"heartRateAvg", "heartRateMin", "heartRateMax",
	"restingHeartRateMin", "restingHeartRateMax", "restingHeartRateAvg",
	"walkingHeartRateAverageAvg", "heartRateVariabilitySDNNAvg",
	"walkingSpeedMin", "walkingSpeedAvg", "walkingSpeedMax",
	"walkingStepLengthMin", "walkingStepLengthMax", "walkingStepLengthAvg",
	"walkingAsymmetryPercentageAvg", "walkingDoubleSupportPercentageAvg",
	"metadata_emailAddress", "metadata_period_hours", "metadata_timestamp"
	) VALUES (
	$1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $30, $31
	)
    ');
var_dump($json->distanceWalkingRunning);
    $res = pg_execute($conn, 'add_data_query', array(
    	$json->distanceWalkingRunning, $json->stepCount, $json->appleExerciseTime, $json->basalEnergyBurned, $json->appleStandTime, $json->activeEnergyBurned, $json->environmentalAudioExposureAvg, $json->environmentalAudioExposureMin, $json->environmentalAudioExposureMax, $json->headphoneAudioExposureAvg, $json->headphoneAudioExposureMin, $json->headphoneAudioExposureMax, $json->heartRateAvg, $json->heartRateMin, $json->heartRateMax, $json->restingHeartRateMin, $json->restingHeartRateMax, $json->restingHeartRateAvg, $json->walkingHeartRateAverageAvg, $json->heartRateVariabilitySDNNAvg, $json->walkingSpeedMin, $json->walkingSpeedAvg, $json->walkingSpeedMax, $json->walkingStepLengthMin, $json->walkingStepLengthMax, $json->walkingStepLengthAvg, $json->walkingAsymmetryPercentageAvg, $json->walkingDoubleSupportPercentageAvg, $json->metadata_emailAddress, $json->metadata_period_hours, $json->metadata_timestamp
    
    ));
   var_dump($res);
    // close the database connection when done
    pg_close($conn);
   echo '{"result": "success", "message": "record added to database"}';


 } else {
  fail('Incorrect http method!');
 }

?>
