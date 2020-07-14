{
  description = "A python app to use with awesome alogrithms! (to test nix-flakes)";
  inputs.nixpkgs.url = github:NixOS/nixpkgs/nixos-20.03;
  inputs.flakeylib.url = github:Staff-d/flakey-lib;

  outputs = { self, nixpkgs, flakeylib }:
  let
    supportedSystems = [ "x86_64-linux" "i686-linux" "aarch64-linux" ];
    forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
    version = "0.1.${nixpkgs.lib.substring 0 8 self.lastModifiedDate}.${self.shortRev or "dirty"}";
  in
  {

    defaultPackage = forAllSystems ( system:

      with (import nixpkgs{inherit system;});
      python37Packages.buildPythonApplication rec {

        pname = "FlakeyApp";
        version = "13.37";

        src = ./.;

        propagatedBuildInputs = with python37Packages; [ tqdm pytestrunner (flakeylib.defaultPackage.${system}) ];
        checkInputs = with python37Packages; [ pytest pylint pytestcov pytest-dependency pytest-pylint];

        #preCheck = ''
        #export PYLINTRC=$src/.pylintrc;
        #export PYLINTHOME=$out
        #'';

        doCheck = false;
      }
    );

  };
}
