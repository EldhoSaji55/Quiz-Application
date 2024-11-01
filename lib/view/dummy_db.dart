import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DummyDb {
  static final Map<String, List<Map<String, dynamic>>> allQuizData = {
    "General Knowledge": [
      {
        "question": "What is the capital of France?",
        "options": ["Berlin", "Madrid", "Paris", "Lisbon"],
        "answerIndex": 2 // Paris
      },
      {
        "question": "Who wrote 'Romeo and Juliet'?",
        "options": [
          "Charles Dickens",
          "Jane Austen",
          "William Shakespeare",
          "Mark Twain"
        ],
        "answerIndex": 2 // William Shakespeare
      },
      {
        "question": "What is the largest planet in our solar system?",
        "options": ["Earth", "Mars", "Jupiter", "Saturn"],
        "answerIndex": 2 // Jupiter
      },
      {
        "question": "What is the boiling point of water?",
        "options": ["90°C", "100°C", "110°C", "120°C"],
        "answerIndex": 1 // 100°C
      },
      {
        "question": "What is the smallest prime number?",
        "options": ["0", "1", "2", "3"],
        "answerIndex": 2 // 2
      },
    ],
    "Sports": [
      {
        "question": "Which country won the FIFA World Cup in 2018?",
        "options": ["Germany", "Brazil", "France", "Argentina"],
        "answerIndex": 2 // France
      },
      {
        "question": "What is the distance of a marathon?",
        "options": ["26.2 miles", "20 miles", "30 miles", "15 miles"],
        "answerIndex": 0 // 26.2 miles
      },
      {
        "question": "In which sport would you perform a slam dunk?",
        "options": ["Basketball", "Football", "Baseball", "Hockey"],
        "answerIndex": 0 // Basketball
      },
      {
        "question":
            "Which athlete is known as 'The Greatest of All Time' in boxing?",
        "options": [
          "Mike Tyson",
          "Muhammad Ali",
          "Floyd Mayweather",
          "Manny Pacquiao"
        ],
        "answerIndex": 1 // Muhammad Ali
      },
      {
        "question": "Which country hosts the Olympic Games in 2024?",
        "options": ["Tokyo", "Paris", "Los Angeles", "London"],
        "answerIndex": 1 // Paris
      },
    ],
    "Maths": [
      {
        "question": "What is the value of π (pi) approximately?",
        "options": ["3.14", "2.14", "4.14", "5.14"],
        "answerIndex": 0 // 3.14
      },
      {
        "question": "What is the square root of 16?",
        "options": ["2", "3", "4", "5"],
        "answerIndex": 2 // 4
      },
      {
        "question": "If x = 3, what is the value of 2x + 5?",
        "options": ["8", "9", "11", "10"],
        "answerIndex": 2 // 11
      },
      {
        "question": "What is the value of 7! (7 factorial)?",
        "options": ["5040", "720", "120", "144"],
        "answerIndex": 0 // 5040
      },
      {
        "question":
            "What is the probability of getting a head when flipping a coin?",
        "options": ["0", "0.25", "0.5", "1"],
        "answerIndex": 2 // 0.5
      },
    ],
    "History": [
      {
        "question": "Who was the first President of the United States?",
        "options": [
          "George Washington",
          "Abraham Lincoln",
          "Thomas Jefferson",
          "John Adams"
        ],
        "answerIndex": 0 // George Washington
      },
      {
        "question": "Which ancient civilization built the pyramids?",
        "options": ["Babylonians", "Egyptians", "Greeks", "Romans"],
        "answerIndex": 1 // Egyptians
      },
      {
        "question": "In which year did World War II begin?",
        "options": ["1935", "1939", "1941", "1945"],
        "answerIndex": 1 // 1939
      },
      {
        "question": "Who was the first man to step on the Moon?",
        "options": [
          "Yuri Gagarin",
          "Neil Armstrong",
          "Buzz Aldrin",
          "John Glenn"
        ],
        "answerIndex": 1 // Neil Armstrong
      },
      {
        "question": "Who discovered America?",
        "options": [
          "Marco Polo",
          "Christopher Columbus",
          "Ferdinand Magellan",
          "Vasco da Gama"
        ],
        "answerIndex": 1 // Christopher Columbus
      },
    ],
    "Chemistry": [
      {
        "question": "What is the chemical symbol for gold?",
        "options": ["Au", "Ag", "Fe", "Hg"],
        "answerIndex": 0 // Au
      },
      {
        "question": "What is the pH of pure water?",
        "options": ["5", "6", "7", "8"],
        "answerIndex": 2 // 7
      },
      {
        "question": "Which gas is known as laughing gas?",
        "options": ["Nitrous oxide", "Carbon dioxide", "Oxygen", "Helium"],
        "answerIndex": 0 // Nitrous oxide
      },
      {
        "question": "What is the main gas found in the air we breathe?",
        "options": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
        "answerIndex": 1 // Nitrogen
      },
      {
        "question": "What is the formula for table salt?",
        "options": ["NaCl", "KCl", "MgCl2", "CaCl2"],
        "answerIndex": 0 // NaCl
      },
    ],
    "Geography": [
      {
        "question": "Which is the longest river in the world?",
        "options": [
          "Amazon River",
          "Nile River",
          "Yangtze River",
          "Mississippi River"
        ],
        "answerIndex": 1 // Nile River
      },
      {
        "question": "What is the capital city of Australia?",
        "options": ["Sydney", "Canberra", "Melbourne", "Brisbane"],
        "answerIndex": 1 // Canberra
      },
      {
        "question": "Which mountain range separates Europe and Asia?",
        "options": ["Himalayas", "Alps", "Urals", "Rockies"],
        "answerIndex": 2 // Urals
      },
      {
        "question": "What is the smallest country in the world?",
        "options": ["Monaco", "Malta", "Vatican City", "Nauru"],
        "answerIndex": 2 // Vatican City
      },
      {
        "question": "Which ocean is the largest?",
        "options": [
          "Atlantic Ocean",
          "Indian Ocean",
          "Arctic Ocean",
          "Pacific Ocean"
        ],
        "answerIndex": 3 // Pacific Ocean
      },
      {
        "question": "What is the primary language spoken in Brazil?",
        "options": ["Spanish", "English", "Portuguese", "French"],
        "answerIndex": 2 // Portuguese
      },
    ],
    "IT": [
      {
        "question": "What does HTML stand for?",
        "options": [
          "Hyper Text Markup Language",
          "High Text Markup Language",
          "Hyperlinks and Text Markup Language",
          "Hypertext and Multimedia Language"
        ],
        "answerIndex": 0 // Hyper Text Markup Language
      },
      {
        "question":
            "Which programming language is primarily used for web development?",
        "options": ["Java", "Python", "JavaScript", "C++"],
        "answerIndex": 2 // JavaScript
      },
      {
        "question": "What is the main purpose of a firewall?",
        "options": [
          "To store data",
          "To protect against unauthorized access",
          "To create websites",
          "To manage network traffic"
        ],
        "answerIndex": 1 // To protect against unauthorized access
      },
      {
        "question": "Which of the following is a version control system?",
        "options": ["Git", "Node.js", "React", "Docker"],
        "answerIndex": 0 // Git
      },
      {
        "question": "What does CPU stand for?",
        "options": [
          "Central Processing Unit",
          "Computer Personal Unit",
          "Central Power Unit",
          "Computer Processing Unit"
        ],
        "answerIndex": 0 // Central Processing Unit
      },
      {
        "question": "Which of the following is an operating system?",
        "options": ["MySQL", "Linux", "HTML", "Java"],
        "answerIndex": 1 // Linux
      },
    ],
    "Space Research": [
      {
        "question":
            "What is the name of the first artificial satellite launched into space?",
        "options": ["Apollo 11", "Vostok 1", "Sputnik 1", "Explorer 1"],
        "answerIndex": 2 // Sputnik 1
      },
      {
        "question": "Which planet is known as the Red Planet?",
        "options": ["Earth", "Venus", "Mars", "Jupiter"],
        "answerIndex": 2 // Mars
      },
      {
        "question":
            "What is the name of NASA's rover that landed on Mars in 2021?",
        "options": ["Curiosity", "Perseverance", "Opportunity", "Spirit"],
        "answerIndex": 1 // Perseverance
      },
      {
        "question": "What force keeps the planets in orbit around the sun?",
        "options": ["Friction", "Gravity", "Electromagnetic force", "Inertia"],
        "answerIndex": 1 // Gravity
      },
      {
        "question": "Which space telescope was launched in 1990?",
        "options": [
          "Hubble Space Telescope",
          "Kepler Space Telescope",
          "Chandra X-ray Observatory",
          "James Webb Space Telescope"
        ],
        "answerIndex": 0 // Hubble Space Telescope
      },
      {
        "question":
            "What is the name of the galaxy that contains our Solar System?",
        "options": [
          "Andromeda Galaxy",
          "Milky Way Galaxy",
          "Sombrero Galaxy",
          "Whirlpool Galaxy"
        ],
        "answerIndex": 1 // Milky Way Galaxy
      },
    ],
  };

  static final Map<String, List> categories = {
    "General Knowledge": [
      FontAwesomeIcons.gears,
      allQuizData["General Knowledge"]!.length
    ],
    "Sports": [FontAwesomeIcons.basketball, allQuizData["Sports"]!.length],
    "Maths": [FontAwesomeIcons.calculator, allQuizData["Maths"]!.length],
    "History": [FontAwesomeIcons.monument, allQuizData["History"]!.length],
    "Chemistry": [FontAwesomeIcons.flaskVial, allQuizData["Chemistry"]!.length],
    "Geography": [FontAwesomeIcons.globe, allQuizData["Geography"]!.length],
    "IT": [FontAwesomeIcons.computer, allQuizData["IT"]!.length],
    "Space Research": [
      FontAwesomeIcons.rocket,
      allQuizData["Space Research"]!.length
    ],
  };
}
