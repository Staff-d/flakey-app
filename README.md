# A Flakey App

This is a nonsensical python """App""" which I used to get a feeling for the new and experimental 
[nix-flakes](https://www.tweag.io/blog/2020-05-25-flakes/). 

I thought I'll put it out here for anyone who wants a starting point on how to compose flakes, 
which is not showcased in the aforementioned blog. 
It features a [references](./flake.nix) to another flake-based project (the [flakey-lib](https://github.com/Staff-d/flakey-lib)),
which provides a nonsensical function to calculate something. 

## How to build

If you've read this far, I assume you now how to use [nix](https://nixos.org/).

[Eelcos blog](https://www.tweag.io/blog/2020-05-25-flakes/) provides a short intro into how to activate the flakes 
feature and how to build a flake. If you are lazy, you can also call use the [`build.sh`](./build.sh) I've provided 
so you don't have to fiddle with the flags.

## Issues

To reproduce my usual python workflow, I wanted to activate `pylint` and `pytest-cov` via a [setup.cfg](./setup.cfg). 
As of the writing of this README, this crashes nix with a `boost::bad_format_string` exception. I've reported this
bug [here](https://github.com/NixOS/nixpkgs/issues/93133).