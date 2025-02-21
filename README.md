# Active Sandbox
This is a sandbox project for [ActiveRecord] database access. It launches a
[devcontainer], plus an Oracle database container. You can then run Ruby scripts
that use ActiveRecord to access the database. It's a minimal environment for
experimenting with ActiveRecord, or writing a [minimal, reproducible example] of
a problem you want to ask about.

To use it, you can either run it on the GitHub website, or on your computer.
Running on the GitHub website is easier, because you don't need to install
anything. As long as you already have a GitHub account, you can follow the
default steps to [create a codespace]. It takes a few minutes to set up, but
be patient. It takes time to set up the database and install the Ruby gems.

It's a bit faster to install and run on your computer. I've tested it with
[VSCode], which basically requires Docker and the devcontainer extension. Other
editors also support devcontainers, but I haven't tested them.

Once you have it running, you can try out a ruby script:

    root@f273b351342b:/opt/project# ruby example.rb
    Hello, World!
    Found 0 professors.
    Created professor Doc Brown with id 1.
    root@f273b351342b:/opt/project#

If it can't find Ruby, try exiting the shell and opening a new one.

Once that works, you can experiment with ActiveRecord and the database. The
database tables are created by scripts in the `initdb.d` folder, and
*each script* must connect as the DEV user, otherwise the tables are created
as the SYS user.

If you want to add other Ruby gems, add them to the `Gemfile`, then rebuild the
container. If you want to play with ActiveRecord and the Sinatra web server
together, try my [Active Sinatra] project.

[ActiveRecord]: https://guides.rubyonrails.org/v7.1/active_record_basics.html
[devcontainer]: https://containers.dev/
[minimal, reproducible example]: https://stackoverflow.com/help/minimal-reproducible-example
[VSCode]: https://code.visualstudio.com/docs/devcontainers/containers
[create a codespace]: https://docs.github.com/en/codespaces/developing-in-a-codespace/creating-a-codespace-for-a-repository
[Active Sinatra]: https://github.com/donkirkby/active_sinatra
