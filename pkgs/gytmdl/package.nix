{
  lib,
  python3Packages,
  fetchFromGitHub,
  ffmpeg
}:

python3Packages.buildPythonApplication rec {
  pname = "gytmdl";
  version = "2.1.4";

  src = fetchFromGitHub {
    owner = "glomatico";
    repo = "gytmdl";
    tag = "${version}";
    hash = "sha256-TnXuIz3UbUOqjUPRC7iZ+PgKcStOZ7OWKWiIvuj1ZfE=";
  };

  # Uncomment if the application has a pyproject.toml
  format = "pyproject";

  # This application has no tests
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
    click
    inquirerpy
    mutagen
    pillow
    yt-dlp
    ytmusicapi
    flit-core
    colorama
  ];

  makeWrapperArgs = [
    "--prefix"
    "PATH"
    ":"
    (lib.makeBinPath [ ffmpeg ])
  ];

  meta = with lib; {
    homepage = "https://github.com/glomatico/gytmdl";
    description = "A YouTube Music music downloader.";
    #license = <license>;
    #platforms = <platforms>;
    #maintainers = with maintainers; [ <maintainer> ];
    mainProgram = "gytmdl";
  };
}
