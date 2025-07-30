import 'package:flutter/material.dart';
import 'package:quizappwork/models/example.dart';

class Dummy {
  static List<Questions> footballQuestions = [
    Questions(
      questios: "Who won the FIFA World Cup in 2018?",
      options: ["Germany", "France", "Brazil", "Argentina"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which country hosted the 2014 FIFA World Cup?",
      options: ["Brazil", "Russia", "South Africa", "Germany"],
      answerindex: 0,
    ),
    Questions(
      questios: "Which player is known as CR7?",
      options: ["Messi", "Mbappe", "Cristiano Ronaldo", "Neymar"],
      answerindex: 2,
    ),
    Questions(
      questios: "Which country has won the most FIFA World Cups?",
      options: ["Brazil", "Italy", "Germany", "Argentina"],
      answerindex: 0,
    ),
    Questions(
      questios: "Where is Camp Nou stadium located?",
      options: ["Madrid", "London", "Barcelona", "Paris"],
      answerindex: 2,
    ),
    Questions(
      questios: "Which country hosted the 2022 FIFA World Cup?",
      options: ["Qatar", "USA", "UAE", "Russia"],
      answerindex: 0,
    ),
    Questions(
      questios: "Who won the Ballon d'Or in 2023?",
      options: ["Messi", "Haaland", "Benzema", "Mbappe"],
      answerindex: 0,
    ),
    Questions(
      questios: "Which club is nicknamed The Red Devils?",
      options: ["Liverpool", "Manchester United", "Chelsea", "Arsenal"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which country is known for the club Juventus?",
      options: ["Spain", "Germany", "Italy", "France"],
      answerindex: 2,
    ),
    Questions(
      questios: "Who is the top scorer in UEFA Champions League history?",
      options: ["Messi", "Cristiano Ronaldo", "Lewandowski", "Benzema"],
      answerindex: 1,
    ),
    Questions(
      questios:
          "What is the maximum duration of a football match (without extra time)?",
      options: ["60 minutes", "90 minutes", "80 minutes", "70 minutes"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which footballer is known as 'The Egyptian King'?",
      options: ["Sadio Mane", "Mohamed Salah", "Mahrez", "Hakimi"],
      answerindex: 1,
    ),
    Questions(
      questios: "How many players start on a football team?",
      options: ["10", "9", "11", "12"],
      answerindex: 2,
    ),
    Questions(
      questios: "Which country does Kylian Mbappe represent?",
      options: ["Portugal", "Brazil", "France", "Spain"],
      answerindex: 2,
    ),
    Questions(
      questios: "Who won UEFA Euro 2016?",
      options: ["France", "Portugal", "Germany", "Spain"],
      answerindex: 1,
    ),
  ];
  static List<Questions> cricketQuestions = [
    Questions(
      questios: "Who won the ICC Cricket World Cup in 2019?",
      options: ["India", "Australia", "England", "New Zealand"],
      answerindex: 2,
    ),
    Questions(
      questios: "Which cricketer is known as the 'Little Master'?",
      options: [
        "Virat Kohli",
        "Rohit Sharma",
        "Sachin Tendulkar",
        "Sunil Gavaskar",
      ],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the length of a cricket pitch?",
      options: ["20 yards", "22 yards", "18 yards", "24 yards"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which country hosted the T20 World Cup 2022?",
      options: ["India", "Australia", "England", "South Africa"],
      answerindex: 1,
    ),
    Questions(
      questios: "Who is known as 'Captain Cool'?",
      options: ["MS Dhoni", "Virat Kohli", "Steve Smith", "Rohit Sharma"],
      answerindex: 0,
    ),
    Questions(
      questios: "Which team has won the most ICC Cricket World Cups?",
      options: ["India", "Australia", "England", "West Indies"],
      answerindex: 1,
    ),
    Questions(
      questios: "Who bowled the fastest delivery in international cricket?",
      options: ["Brett Lee", "Shoaib Akhtar", "Shaun Tait", "Mitchell Starc"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which cricketer is nicknamed 'Hitman'?",
      options: ["KL Rahul", "Shikhar Dhawan", "Rohit Sharma", "Rishabh Pant"],
      answerindex: 2,
    ),
    Questions(
      questios: "How many players are on the field from one team in cricket?",
      options: ["9", "10", "11", "12"],
      answerindex: 2,
    ),
    Questions(
      questios: "Who holds the record for most ODI runs?",
      options: ["Sachin Tendulkar", "Virat Kohli", "Ricky Ponting", "MS Dhoni"],
      answerindex: 0,
    ),
    Questions(
      questios: "What is the maximum overs in a T20 match?",
      options: ["10", "15", "20", "25"],
      answerindex: 2,
    ),
    Questions(
      questios: "Who won the ICC Champions Trophy 2013?",
      options: ["India", "England", "Australia", "Sri Lanka"],
      answerindex: 0,
    ),
    Questions(
      questios: "Which Indian bowler took a hat-trick in World Cup 2019?",
      options: ["Bumrah", "Shami", "Chahal", "Jadeja"],
      answerindex: 1,
    ),
    Questions(
      questios: "Which cricketer is famous for the helicopter shot?",
      options: ["Rohit Sharma", "Sachin Tendulkar", "MS Dhoni", "Kohli"],
      answerindex: 2,
    ),
    Questions(
      questios: "Where is the Eden Gardens stadium located?",
      options: ["Delhi", "Mumbai", "Kolkata", "Chennai"],
      answerindex: 2,
    ),
  ];
  static List<Questions> countryCapitalQuestions = [
    Questions(
      questios: "What is the capital of India?",
      options: ["Mumbai", "Delhi", "Kolkata", "Chennai"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of Australia?",
      options: ["Sydney", "Melbourne", "Canberra", "Perth"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the capital of USA?",
      options: ["New York", "Los Angeles", "Chicago", "Washington, D.C."],
      answerindex: 3,
    ),
    Questions(
      questios: "What is the capital of Japan?",
      options: ["Osaka", "Tokyo", "Kyoto", "Hiroshima"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of France?",
      options: ["Marseille", "Paris", "Lyon", "Nice"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of Germany?",
      options: ["Frankfurt", "Munich", "Berlin", "Hamburg"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the capital of Canada?",
      options: ["Toronto", "Vancouver", "Ottawa", "Montreal"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the capital of Brazil?",
      options: ["Sao Paulo", "Rio de Janeiro", "Brasilia", "Salvador"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the capital of Italy?",
      options: ["Venice", "Rome", "Milan", "Naples"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of Russia?",
      options: ["Moscow", "Saint Petersburg", "Sochi", "Kazan"],
      answerindex: 0,
    ),
    Questions(
      questios: "What is the capital of China?",
      options: ["Shanghai", "Beijing", "Guangzhou", "Shenzhen"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of South Africa?",
      options: ["Cape Town", "Pretoria", "Johannesburg", "Durban"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of UAE?",
      options: ["Dubai", "Abu Dhabi", "Sharjah", "Ajman"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is the capital of Singapore?",
      options: ["Kuala Lumpur", "Bangkok", "Singapore", "Manila"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is the capital of Malaysia?",
      options: ["Singapore", "Bangkok", "Manila", "Kuala Lumpur"],
      answerindex: 3,
    ),
  ];
  static List<Questions> simpleMathQuestions = [
    Questions(
      questios: "What is 5 + 3?",
      options: ["7", "8", "9", "10"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 10 - 4?",
      options: ["5", "6", "7", "8"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 6 × 2?",
      options: ["10", "11", "12", "14"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is 9 ÷ 3?",
      options: ["2", "3", "4", "5"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 7 + 6?",
      options: ["12", "13", "14", "15"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 15 - 7?",
      options: ["7", "8", "9", "10"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 4 × 4?",
      options: ["12", "14", "16", "18"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is 20 ÷ 5?",

      options: ["2", "3", "4", "5"],
      answerindex: 3,
    ),
    Questions(
      questios: "What is 8 + 9?",
      options: ["15", "16", "17", "18"],
      answerindex: 2,
    ),
    Questions(
      questios: "What is 12 - 5?",

      options: ["6", "7", "8", "9"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 3 × 7?",
      options: ["20", "21", "22", "23"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 16 ÷ 4?",
      options: ["3", "4", "5", "6"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 11 + 5?",
      options: ["15", "16", "17", "18"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 14 - 6?",
      options: ["7", "8", "9", "10"],
      answerindex: 1,
    ),
    Questions(
      questios: "What is 9 × 2?",
      options: ["17", "18", "19", "20"],
      answerindex: 1,
    ),
  ];
  static List selection = [
    Dummy.footballQuestions,
    Dummy.cricketQuestions,
    Dummy.countryCapitalQuestions,
    Dummy.simpleMathQuestions,
  ];
  static List<String> grid = [
    'Football',
    'Cricket',
    'Countries&Capitals',
    'Maths',
  ];
  static List<Icon> gridicon = [
    Icon(Icons.sports_basketball),
    Icon(Icons.sports_cricket),
    Icon(Icons.map),
    Icon(Icons.calculate),
  ];
}
