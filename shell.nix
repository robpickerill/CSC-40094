{ pkgs ? import <nixpkgs> { } }:
let
  pythonWithOpencv = pkgs.python311.withPackages (ps: with ps; [
    (pkgs.opencv4.override {
      enableGtk2 = true;
      gtk2 = pkgs.gtk2;
      # enableFfmpeg = true; # Uncomment to add ffmpeg and other compilation flags
      # ffmpeg_3 = pkgs.ffmpeg-full;
    })
  ]);
in
pkgs.mkShell {
  buildInputs = [
    pythonWithOpencv
    pkgs.python311Packages.pip
    pkgs.python311Packages.setuptools
    pkgs.python311Packages.wheel
    pkgs.boost
    pkgs.ffmpeg
    pkgs.libjpeg
    pkgs.libpng
    pkgs.libtiff
    pkgs.openexr
    pkgs.libdc1394
    # pkgs.libv4l
    # pkgs.gstreamer
    # pkgs.gst-plugins-base
    # pkgs.gst-plugins-good
    # pkgs.gst-plugins-bad
    # pkgs.gst-plugins-ugly
    pkgs.opencl-headers
    pkgs.tbb
    pkgs.eigen
    pkgs.pkg-config
    pkgs.cmake
  ];
}
