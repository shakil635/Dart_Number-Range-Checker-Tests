/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_number_range_checker_base.dart';

// TODO: Export any libraries intended for clients of this package.

void checkNumberRange(int numbers, {min = 1, max = 100}) {
  if (!(numbers >= min && numbers <= max)) {
    throw OutOfRangeException("Threw out of range exception on the number: ");
  }
}

class OutOfRangeException implements Exception {
  OutOfRangeException(this.messages);
  String messages;
}

/*
Practice Question 1: Number Range Checker
Task:
Create a function named checkNumberRange that 
takes an integer and checks if it is 
within a specified range (e.g., 1 to 100).
If the number is outside the range, 
throw a custom exception named OutOfRangeException.
Include an optional parameter in 
the function to allow specifying different ranges.
 */