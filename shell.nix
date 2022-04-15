with import <nixpkgs> { };

let
  tf = terraform.withPlugins (p: with p; [ github ]);

  terraform-docs = pkgs.terraform-docs.overrideAttrs (attrs: rec {
    version = "0.16.0";
    owner = "terraform-docs";
    pname = "terraform-docs";
    src = pkgs.fetchFromGitHub {
      inherit owner;
      repo = pname;
      rev = "v${version}";
      sha512 =
        "2k56d7a0fr32cn9fki236k3kj56jz21gn6a1gx1vv63igs1x07iv0lyaz6n8nrh4gl9i4w4s8jlfpy57q1ws6m6w7hjbw7b7369pg5r";
    };
  });

in mkShell {
  buildInputs = [ tf terraform-docs nixfmt pre-commit go gotools gopls ];

  shellHook = ''
    export GOPATH="$(pwd).go"
    export GOPROXY="proxy.golang.org"
  '';
}
