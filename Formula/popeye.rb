# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  version "0.8.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/derailed/popeye/releases/download/v0.8.7/popeye_Darwin_x86_64.tar.gz"
    sha256 "075c7caaeff6d6ccd5e7514dfee0eed6382bd80dae241d53c1389dc24b779f9d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.8.7/popeye_Linux_x86_64.tar.gz"
      sha256 "fd4104b6aac85c65d58c29a224a3a6c55280e5e59c7bdbfa6c3ae023cfcb6967"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/derailed/popeye/releases/download/v0.8.7/popeye_Linux_arm64.tar.gz"
        sha256 "fae263b78e77c6531c3bf85874068ff7128ce77875812d254db420849f23184a"
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
