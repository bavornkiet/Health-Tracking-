<?php
//lets make some output for the user

function runPy (): void {
	$email = $_SESSION['email'];

	//run process
	shell_exec('python3 process.py -u '.$email);

	//run image generator
	shell_exec('python3 produceGraphics.py -u '.$email);
	
	//wait for the python scripts to finish
	sleep(4);
	header('Location: ../view.html');
	
}
?>