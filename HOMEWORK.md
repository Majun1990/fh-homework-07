# Homework 7 - Coding Challenges Part 2

## Due Date

Tuesday, September 24, 2019

## Goals

- The purpose of this homework assignment is to solve 2 coding challenges using
  the Ruby Programming Language. This will help you get comfortable with your
  problem solving abilities.

## Readings and Resources

Single Responsibility Principle (SRP) - https://en.wikipedia.org/wiki/Single_responsibility_principle

Sandi Metz Rules - https://gist.github.com/henrik/4509394

'Solving Problems Breaking It Down' by John Sonmez - https://simpleprogrammer.com/2011/01/08/solving-problems-breaking-it-down

'Recursion Revealed!' by Charlie Brooke O'Hara - https://medium.com/@charlie.b.ohara/recursion-revealed-f8543e4dad1c

'Ruby Docs' - http://www.ruby-lang.org/en/documentation/

'Rails Guides' - http://guides.rubyonrails.org/index.html

## Design Goals

- Your class can be no longer than 100 lines of code.
- Your methods can be no longer than five lines of code.
- You can pass no more than four parameters and you can’t just make it one big hash.
- Your methods should perform a single responsibility.

## Coding Task 1: String Rewriting

- Write a function which takes a string of alpha characters and rewrites the
  given input string in an optimized format. For example,

  ```
  >> challenge = Challenge3.new("aaabbbccaadd")
  >> challenge.rewrite
  => "3a3b2c2a2d"

  >> challenge = Challenge3.new("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz")
  >> challenge.rewrite
  => "97a122z97a122z97a122z97a122z97a"
  ```

  In order to complete this challenge, all specs must pass and you can run them
  by doing the following:

  ```bash
  unzip fh-homework-07.zip
  cp /path/to/fh-homework-07/challenge3
  bundle
  rspec
  ```

  The expected output is as follows:

  ```text
  ...

  Finished in 0.00194 seconds (files took 0.10175 seconds to load)
  3 examples, 0 failures
  ```

  Note: You are not to use regular expressions to complete this challenge.

## Coding Task 2: Factorial

- Writing a function that computes the factorial of a positive integer greater than
  or equal to zero using recursion. A recursive function is a function which calls
  itself. Furthermore, a recursive function is one which has two cases:

  - a base case which should terminate execution and return a result

  - a recursive case which should call itself with a different set of
    arguments

  ```text
  >> Challenge4.factorial(0)
  => 1

  >> Challenge4.factorial(1)
  => 1

  >> Challenge4.factorial(50)
  => 30414093201713378043612608166064768844377641568960512000000000000
  ```

  In order to complete this challenge, all specs must pass and you can run them
  by doing the following:

  ```bash
  cp /path/to/fh-homework-07/challenge4
  bundle install
  rspec
  ```

  The expected output is as follows:

  ```text
  ...

  Finished in 0.00144 seconds (files took 0.12384 seconds to load)
  3 examples, 0 failures
  ```

  Note: You are not to use any loop structures which include each, for, while,
  and so on.

## Coding Task 3: Incorporating challenge 1 or 2 into a Rails application

- Write a Rails application which incorporates your answer to challenge 1 or

  2.  For example,

  - using challenge 1

    - enter valid input
      - all other inputs should generate a warning message
    - save it the the database (do not insert duplicates)
      - value of the input and result of the computation should be stored
    - display the result in the browser

  - using challenge 2

    - enter valid input
      - invalid inputs should generate a warning message
      - inputs too large should generate a warning message
    - save valid input and responses to the the database
      (do not insert duplicates)
      - value of the input and result of the computation should be stored
    - display the result in the browser

  Note: Please feel free to come up with your own idea which incorporates
  your solution and the above is just an example.

## Deliverables

- Please create a repo called `fh-homework-07` on Github.com and push your
  finished work there.

## Have Questions

Please make a reasonable effort to complete the homework prior to our next session. If you have any questions regarding this homework, please do send me a message via Slack.
