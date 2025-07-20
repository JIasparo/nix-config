{
  lib,
  python3Packages,
  fetchFromGitHub,
  ffmpeg
}:

python3Packages.buildPythonApplication rec {
  pname = "gytmdl";
  version = "2.1.6";

  src = fetchFromGitHub {
    owner = "glomatico";
    repo = "gytmdl";
    tag = "${version}";
    hash = "sha256-JPpSNNEDT3Lcg+s0Qkbl3Gs9inzC01ad+Dc2H5hJzRA=";
  };

  # Uncomment if the application has a pyproject.toml
  format = "pyproject";

  # This application has no tests
  doCheck = false; # set to true if it has tests

  # Dependencies that should exist in the runtime environment and also propagated to downstream runtime environments
  propagatedBuildInputs = with python3Packages; [
    click
    colorama
    flit-core
    inquirerpy
    mutagen
    pillow
    yt-dlp
    ytmusicapi
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
