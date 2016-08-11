{ stdenv, fetchFromGitHub, perl, rustPlatform }:

with rustPlatform;

buildRustPackage rec {
  name = "parity-${version}";
  version = "1.4.5";

  src = fetchFromGitHub {
    owner = "ethcore";
    repo = "parity";
    rev = "a028d04b01281812bb39136d96fa922343b978ee";
    sha256 = "1ik9xsj5wqyfh1qm1wnnyalqxc4ww1xbr6cm4svpdkk2ml9fn7fr";
  };

  buildInputs = [ perl ];
  depsSha256 = "0865y7z9cnlh4pr1ix1p2s0hsjzz785cp5mr3mv35yr1ni42jxk4";

  meta = {
    description = "Fast, light, robust Ethereum implementation";
    homepage = http://ethcore.io/parity;
    license = stdenv.lib.licenses.gpl3;
    inherit version;
  };
}
