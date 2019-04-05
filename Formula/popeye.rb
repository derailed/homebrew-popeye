class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter"
  homepage "https://imhotep.io/popeye"
  url "https://github.com/derailed/popeye/releases/download/0.1.0/popeye_0.1.1_Darwin_x86_64.tar.gz"
  version "0.1.0"
  sha256 "ad07db979cc0f66bdf0442d6df6eaa58aade347ba0b280b4c6b551fe481d22ae"

  def install
    bin.install "popeye"
  end

  test do
    system "popeye version"
  end
end
