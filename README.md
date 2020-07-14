# A Flakey App

This is a nonsensical python """App""" which I used to get a feeling for the new and experimental 
[nix-flakes](https://www.tweag.io/blog/2020-05-25-flakes/). 

I thought I'll put it out here for anyone who want a starting point on how to compose flakes, 
which is not showcased in the aforementioned blog. 
It features a [references](./flake.nix) to another flake-based project (the [flakey-lib](https://github.com/Staff-d/flakey-lib)),
which provides a nonsensical function to calculate something. 

## Issues

To reproduce my usual python workflow, I wanted to activate `pylint` and `pytest-cov` as usual via a [setup.cfg](./setup.cfg). 
As of the writing of this README, this crashes nix with a `boost::bad_format_string` exception. I've reported this
bug [here](https://github.com/NixOS/nixpkgs/issues/93133).