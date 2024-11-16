# Exray

**Raylib Bindings for the Elixir Programming Language**

## ! IMPORTANT NOTICE !
### As of 0.5.0, Exray's NIFs will need to be compiled _manually_.
### Please see [information on compilation below!](#compiling-exray-nifs)

## Get In Touch!
Want to get shoot the breeze or show off some cool creations?\
I frequent the [Elixir Language Discord](https://discord.gg/elixir) and post dev updates in the #share forum post for Exray.\
Feel free to `@_lila` at any time, happy to shoot the breeze.

## Installation

### Adding Exray to your mix.exs dependencies

This package can be installed by adding `exray` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:exray, "~> 0.5.0"}
  ]
end
```

Or, if you're adventurous and don't care if things break, using the git version:

```elixir
def deps do
  [
    {:exray, git: "https://github.com/FatigueDev/exray"}

    # You can also set `ref: "(commit SHA ID)"`, like so to use a specific commit!
    # {:exray, git: "https://github.com/FatigueDev/exray", ref: "c9c46aa645b0c0964e6d28dc24d6557ee7d258a3"}
  ]
end
```


## Compiling Exray NIFs

### Set and forget

Once added to your dependencies, you will need to compile the bindings by running:\
`mix compile.exray`

You only need to compile once, so once it compiles successfully you don't have to worry about compiling again unless you update your version or are [creating a fork](#compile-every-single-time-slow-as-hell).

In the case the `mix compile.exray` task fails, run it again. Seriously, sometimes it doesn't work first try due to BEAM Code caching. Whenever there is ANY version update, run `mix compile.exray` to recompile the NIFs. Specs may change, backend calls may change. It's a rolling WIP build until it is feature complete, effectively.

### Compile every single time (Slow as hell)

So you plan to make a fork, I suppose- And you don't want to run `mix compile.exray` every time.\
Easy fix, just go to your `mix.exs`, under your `project` config and add the `compilers` key with this new value:

```elixir
def project do
  [
    # ...
    compilers: [:exray] ++ Mix.compilers(),
    # ...
  ]
end
```

What this will do is prepend the mix task `compile.exray` before your own compilers, making it so that every time you `mix`, you're rebuilding your NIFs.

### Why do I have to compile the NIFs manually now?

As the modules grew in Exray, so too did the compilation times. I've put some work into making it so that you can [compile once](#compile-exrays-nif-bindings---set-and-forget) and have your code reload without having to recompile every single one of the likely hundreds of NIFs that are popping up. This is a **very** good quality of life change and will save you a whole heaping helping of time in the long run. Of course, if you liked compiling every time or you're working on a fork, you can always [compile every time you mix](#compile-exrays-nif-bindings---compile-every-single-time-slow-as-hell).