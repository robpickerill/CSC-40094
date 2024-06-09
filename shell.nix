{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
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

