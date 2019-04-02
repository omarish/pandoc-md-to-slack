with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "md2slack";
  src = ./.;
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    pandoc
    which
  ];
  installPhase = ''
    mkdir -p "$out/bin"
    echo "#! ${stdenv.shell}" >> "$out/bin/md2slack"
    echo "exec $(which pandoc) -f gfm -t slack.lua" >> "$out/bin/md2slack"
    chmod a+x "$out/bin/md2slack"
  '';
}
