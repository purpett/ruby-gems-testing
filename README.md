# Ruby Gems: RSpec 

RSpec is a ruby gem used to write tests in a more expressive way so that they are easier to read and understand. 

RSpec follows Behavior-Driven Development (BDD), which focuses on describing the expected behaviour of an application, through examples and specifications.

The fundamental part of using BDD is writing tests before writing code, expecting them all to fail. 

### Setup

1. Installing RSpec - in your terminal run -> `gem install rspec`
2. Verify the version -> `rspec --version`
3. For any other option -> `rspec --help`
4. Create a new project directory and `cd` into it
5. In your terminal run -> `rspec --init`

In your project directory, you should now have a `.rspec` file and a `spec/spec_helper.rb` file.

### BDD

1. Run `rspec` in your terminal and expect this output:
```
No examples found.

Finished in 0.00037 seconds (files took 0.21108 seconds to load)
0 examples, 0 failures
```

2. Add a new file in the `spec` folder -> `$ touch spec/calculator_spec.rb`
3. Write the first test using [built in matchers](https://web.archive.org/web/20230202075250/https://relishapp.com/rspec/rspec-expectations/v/3-7/docs/built-in-matchers) and run it with `rspec`. **_Expect it to fail_**.
4. Now write your code, keeping the tests in mind. The _purpose_ of the _code_ is to pass the tests. 


## SimpleCov

SimpleCov is another Ruby gem for testing. It is often used with RSpec. SimpleCov helps you measure and improve the effectiveness of your tests by providing insights into the code coverage of your application. 

### Setup

You must already have RSpec or another testing framework installed. 

1. Installing SimpleCov - in your terminal run -> `gem install simplecov`
2. At the top of the `spec/spec_helper.rb` file:
    - `require 'simplecov'`
    - `SimpleCov.start`
3. Run `rspec` in your terminal. SimpleCov will create a `coverage` directory with an `index.html` file containing a test coverage report. 
4. Run `open coverage/index.html` to see it in the browser
    ![simplecov report](/media/simplecov-screenshot.png)

    ![simplecov specific report](/media/simplecov-report.png)


## Rails implementation

1. Create a new rails project -> `rails new <project_name> -T`
    - the `-T` flag disables the native testing framework, so that we can add our own.

2. In the testing section of the gemfile, add `rspec-rails` (and `simplecov` if you wish) and run `bundle install`
    ![Add rspec-rails and simplecov to gemfile](/media/gemfile-test.png)

3. In your terminal run: `rails generate rspec:install`. This creates the spec files. 

3. At the top of the `spec/spec_helper.rb` file:
    - `require 'simplecov'`
    - `SimpleCov.start`

4. Generate a model: e.g. `rails g model Author first_name last_name`. It will create the model and related spec file
    ![Terminal output](/media/terminal-output.png)

5. Run `rails db:migrate`

6. Write test and run `rspec`. This will fail.

7. Write code and run `rspec`. 

Get the gems:

- [RSpec](https://rubygems.org/gems/rspec)
- [SimpleCov](https://rubygems.org/gems/simplecov)