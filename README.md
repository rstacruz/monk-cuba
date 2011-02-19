Usage
-----

With monk:

    monk install
    monk start

Without monk:

    cat .gems | grep -v \# | xargs gem install
    shotgun

Using this skeleton
-------------------

This Monk skeleton uses [Cuba](http://github.com/soveran/cuba.git) instead of [Sinatra](http://www.sinatrarb.com).

### Generic instructions

    git clone --depth 1 git://github.com/rstacruz/monk-cuba.git myproject && rm -rf myproject/.git

### Monk users

[Monk-shake](http://github.com/rstacruz/monk-shake) is the recommended version.

    gem install monk-shake --pre

Add the skeleton and create a new project with it.

    monk add cuba git://github.com/rstacruz/monk-cuba.git
    monk init myproject -s cuba

Structure
---------

    app.rb        - The main file
    shotgun.rb    - File preloaded by Shotgun, has all the gem require lines
    Monkfile      - Monk tasks are here

    routes/       - Routes go here
    lib/          - All your Ruby classes/modules (models, helpers, etc)
    lib/main/     - Helpers are usually here
    views/        - View files
    public/       - Static files
