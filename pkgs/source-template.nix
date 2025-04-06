{stdenv, fetchFromGitHub}:

stdenv.mkDerivation rec {
  pname = "aa";
  version = "aa";

  src = fetchFromGitHub {
    owner = "aa";
    repo = pname;
    rev = "${version}";
    sha256 = "000000000000000000000000000000000000000000000000000000";
  };

  buildInputs = [];

  meta = with stdenv.lib; {
    description = "aa";
    homepage = "aa";
    license = licenses.mit;
    platforms = platforms.unix;
  };
}