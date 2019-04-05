class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter"
  homepage "https://imhotep.io/popeye"
  url "https://github.com/derailed/popeye/releases/download/0.1.0/popeye_0.1.0_Darwin_x86_64.tar.gz"
  version "0.1.0"
  sha256 "0c31d893887cbca5bd2824a73a45a8b5914159abb9853f8d10b295e24fdbf224"

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
