let userScore = 0;
let computerScore = 0;

const userChoice = userInput => {

	if (userInput === "rock" || userInput === "scissors" || userInput === "paper") {
		console.log(`You chose ${userInput}.`);

	} else {
		console.log("Your command does not exist. Please try again.");	
	}
}

const computerChoice = () => {
	let randomNumber = Math.floor(Math.random() * 3);
	switch (randomNumber) {
		case 0:
			return "rock";
		case 1:
			return "scissors";
		case 2:
			return "paper";
	}
}

const determineWinner = (userChoice, computerChoice) => {
	console.log(`You chose ${userChoice}`);
	console.log(`The computer chose ${computerChoice}`);
	
	if (userChoice == computerChoice) {
		console.log("It's a tie");
	} 

	else if (userChoice === "rock") {
		if (computerChoice === "scissors") {
			console.log("You won :) !");
		} else if (computerChoice === "paper") {
			console.log("You lost :( !");
		}
	}

	else if (userChoice === "scissors") {
		if (computerChoice === "paper") {
			console.log("You won :) !");
		} else if (computerChoice === "rock") {
			console.log("You lost :( !");
		}
	}

	else if (userChoice === "paper") {
		if (computerChoice === "scissors") {
			console.log("Looser :( !");
		} else if (computerChoice === "rock") {
			console.log("You Lost :) !");
		}
	}
}
determineWinner("scissors", computerChoice());
// console.log(userChoice('Rock'));