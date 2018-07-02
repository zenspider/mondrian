# Mondrian

## Using the graphics gem to make art

### Prerequisites

These instructions assume the following:

* You have ruby 2+ set up properly (eg you can gem install C extensions)
* You're on a mac
* You have homebrew set up (check with `brew list`)

If these prerequisites don't fit your setup, please consider
submitting a PR with instructions for your platform.

### Installing on a Mac

You need to have SDL (v1) installed. This is easy via homebrew:

```
$ brew install sdl       --universal
$ brew install sdl_mixer --universal --with-smpeg
$ brew install sdl_ttf   --universal
$ brew install sdl_image --universal --without-webp
```

Assuming that worked, getting the graphics gem installed should be
easy:

```
$ gem install graphics --pre
```

Assuming you have your ruby environment set up correctly, it should
install both `graphics` and `rsdl`, which you'll use to run
everything.

To validate that the install is really working, try running this:

```
$ rsdl -rgraphics -e 'Class.new(Graphics::Simulation) { def draw n; clear :white; text "hit escape to quit", 100, 100, :black; end; }.new(500, 250, 0, "Working!").run'
```

### Mondrian Tutorial

You can start with mondrian.rb right away and tweak it to your hearts
content, but if you want to have a better understanding of the code
there, you should look at how the code evolved to where it currently
is. Use your favorite git tool (or just git) to look at the individual
commits. Read the commit message, look at the diff, consider running
that version of the script.

To do this automatically for every commit, run `rake`.
