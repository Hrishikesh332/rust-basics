with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "rust";
    buildInputs = [
        rustup
        openssl
        libudev-zero
        vscode-extensions.matklad.rust-analyzer
    ];
    nativeBuildInputs = [
        rustc cargo
        # Example Build-time Additional Dependencies
        pkg-config
    ];
    installPhase = ''
        rustup default stable
    '';
}