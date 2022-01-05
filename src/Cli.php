<?php

namespace Brain\Games\Cli;

use function cli\line;
use function cli\prompt;

function welcome()
{
    line('Welcome to the Brain Game!');
    $name = prompt('May I have your name?');
    line("Hello, %s!", $name);
}

function even()
{
    line('Welcome to the Brain Game!');
    $name = prompt('May I have your name?');
    line("Hello, %s!", $name);
    line('Answer "yes" if the number is even, otherwise answer "no".');
    $number = random_int(1,10);
    line('Question: '. $number);
    $answerUser = prompt('Your answer');

    if ($answerUser === "yes" || $answerUser === "no") {
        $validAnswer = ($number % 2 === 0) ? "yes" : "no";
        if ($answerUser === $validAnswer) {
            line("Correct!");
        } else {
            line("yes' is wrong answer ;(. Correct answer was 'no'.\nLet's try again, %s!", $name);
        }
    } else {
        line("yes' is wrong answer ;(. Correct answer was 'no'.\nLet's try again, %s!", $name);
    }
}
