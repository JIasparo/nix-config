{
  lib,
  python3Packages,
  fetchFromGitHub,
}:

python3Packages.buildPythonApplication rec {
  pname = "<pname>";
  version = "<version>";

  src = fetchFromGitHub {
    owner = "<owner>";
    repo = "<pname>";
    tag = "${version}";
    hash = "";
  };

  # Uncomment if the application has a pyproject.toml
  #format = "pyproject";

  # Does this application have tests?
  doCheck = false; # set to true if it has tests

  # Dependencies that should exist in the runtime environment
  buildInputs = [
    #
  ];

  # Dependencies that should only exist in the build environment
  nativeBuildInputs = [
    #
  ];

  # Dependencies that should exist in the runtime environment and also propagated to downstream runtime environments
  propagatedBuildInputs = with python3Packages; [
    #
  ];

  meta = with lib; {
    homepage = "<repo-url>";
    description = "<description>";
    license = <license>;
    platforms = <platforms>;
    maintainers = with maintainers; [ <maintainer> ];
    mainProgram = "<main-pname>";
  };
}
