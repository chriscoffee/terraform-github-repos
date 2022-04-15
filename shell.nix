with import <nixpkg> {};
let
    terraform = terraform.withPlugins(p: with p; [
        github
    ]);

    terraform-docs = pkgs.terraform-docs.overrideAttrs (attrs: rec {
        version = "";
        owner = "";
        pname = "";
        src = pkgs.fetchFromGitHub {
            inherit owner;
            repo = pname;
            rev = "v${version}";
            sha = "";
        };
    });

in
mkShell {
    buildInputs = [
        terraform
        terraform-docs
        nixfmt
    ];
};