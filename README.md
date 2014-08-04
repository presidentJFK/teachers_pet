#TEACHERS PET
![Teachers Pet](/static/randall.jpg)
---

This is an exploration in tracking various metrics in apps and reporting on them

To use the command line tool
```bash
git clone git@github.com:presidentJFK/teachers_pet.git
gem build teachers_pet.gemspec
gem install teachers_pet.0.0.1.gem
```

Then once you are in the an application that has both
Rubocop and SimpleCov installed
and in your README.md you have somewhere
```
# README.md
Rubocop Offenses: (Integer here)
SimpleCov: (Float Here)
```

Then typing hey_teacher will report on where your current
Rubocop Offenses are, and your SimpleCov test coverage are
compared to what was last recorded in your README.md

hey_teacher_update updates the README.md
```bash
hey_teacher
hey_teacher_update
```


To run the Sinatra App to view stats
```bash
bundle install
ruby db/report.rb
ruby teachers_pet.rb

# For some fake data
ruby db/seed.rb
```
