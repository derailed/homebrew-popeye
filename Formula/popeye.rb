# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/popeye/releases/download/v0.8.0/popeye_Darwin_x86_64.tar.gz"
    sha256 "492b1ad183c42a1fbbfca4b535f01e65c01af6f8ffb23f817330c17273b29d4e"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.8.0/popeye_Linux_x86_64.tar.gz"
      sha256 "f06da4264d02a0cdda25b35c32c584e1086c86052b8fb89dcc37466bf8db3360"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/popeye/releases/download/v0.8.0/popeye_Linux_arm64.tar.gz"
        sha256 "9cd9d63c355533dc40663dffcf34d486c896c2bdc1f23ebd1e2e453ec98fd56d"
      else
      end
    end
  end

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
