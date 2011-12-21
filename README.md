# My Rails 3 Application Template

## Using it
I use this to create new Rails apps tailored to my preferences. Like this, for example:

    cd ~/code
    git clone git://github.com/mileszs/rails3_template.git
    rails new appname -d postgresql -m rails3_template/template.rb

## What it do:
+ Populates the Gemfile with a ton of shit (just go look at [partials/_gemfile.rb](https://github.com/mileszs/rails3_template/blob/master/partials/_gemfile.rb)).
+ Creates an .rvmrc
+ Sets up Simple Form
+ Throws in a couple helpers (for title and meta description)
+ git init . and commit all that shit.

## TODO
+ 960.gs? Twitter Bootstrap? Skeleton?
+ Jammit? Jammit + those rake tasks I wrote for Heroku + Jammit?
+ FastestForward's heroku_san? ... At least as an option, right?

## Thank you.

Mike Fischer's [Rails app template](http://thelastpixel.net/2010/11/21/rails-3-application-template/) was a huge help. I copied much of this template from his. I also used Jeremy McAnally's [rails-templates](https://github.com/jm/rails-templates) repo for some inspiration. Also, Collin Schaafsma [has a decent method reference](http://quickleft.com/blog/rails-application-templates), though it might be incomplete.
