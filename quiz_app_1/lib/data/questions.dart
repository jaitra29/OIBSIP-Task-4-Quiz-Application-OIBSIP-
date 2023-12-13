import 'package:quiz_app_1/models/quiz_question.dart';

const questions = [
  QuizQuestion(
    'What is Java?',
    [
      'A programming language',  // Correct answer
      'A coffee brand',
      'An operating system',
      'A type of computer',
    ],
  ),
  QuizQuestion(
    'Explain the main features of Java.',
    [
      'Platform independence',  // Correct answer
      'Object-oriented nature',
      'Automatic memory management',
      'Multi-threading',
    ],
  ),
  QuizQuestion(
    'What is the difference between JDK, JRE, and JVM?',
    [
      'JDK is for development, JRE is for running, and JVM is for execution.',  // Correct answer
      'JDK is for running, JRE is for development, and JVM is for execution.',
      'JDK is for execution, JRE is for development, and JVM is for running.',
      'JDK, JRE, and JVM are interchangeable terms.',
    ],
  ),
  QuizQuestion(
    'What is the significance of the "public static void main(String[] args)" method in Java?',
    [
      'It is the entry point of the program, and execution begins from this method.',  // Correct answer
      'It is used to declare variables that can be accessed throughout the entire program.',
      'It is responsible for printing output to the console.',
      'It is a method used for mathematical calculations in Java.',
    ],
  ),
  QuizQuestion(
    'What is the difference between int and Integer in Java?',
    [
      'int is a primitive data type, and Integer is a wrapper class for int.',  // Correct answer
      'int is a wrapper class for Integer.',
      'int and Integer are interchangeable in Java.',
      'There is no difference between int and Integer in Java.',
    ],
  ),
  QuizQuestion(
    'Explain the concept of object-oriented programming (OOP) in Java.',
    [
      'OOP is a programming paradigm based on the concept of "objects" that can contain data and code.',  // Correct answer
      'OOP is a programming paradigm focused only on functions and procedures.',
      'OOP is not applicable in Java.',
      'OOP is a term used for writing simple scripts in Java.',
    ],
  ),
  QuizQuestion(
    'What is a constructor in Java?',
    [
      'A special method used for initializing objects.',  // Correct answer
      'A method used for mathematical calculations.',
      'A keyword used to create instances of classes.',
      'A method used to define constants.',
    ],
  ),
  QuizQuestion(
    'How does exception handling work in Java?',
    [
      'Exceptions are objects that represent errors during program execution.',  // Correct answer
      'Exception handling is not supported in Java.',
      'Exceptions are automatically ignored in Java programs.',
      'Exceptions can only be handled using external libraries.',
    ],
  ),
  QuizQuestion(
    'What is the difference between == and .equals() in Java?',
    [
      '== is used to compare object references, and .equals() is used to compare object contents.',  // Correct answer
      '== and .equals() are interchangeable in Java.',
      '== is used to compare primitive types, and .equals() is used for objects.',
      'There is no difference between == and .equals() in Java.',
    ],
  ),
];

