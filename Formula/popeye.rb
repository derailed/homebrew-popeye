# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Popeye < Formula
  desc "A Kubernetes Cluster sanitizer and linter."
  homepage "https://imhotep.io/popeye"
  version "0.21.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/derailed/popeye/releases/download/v0.21.2/popeye_darwin_arm64.tar.gz"
      sha256 "c6603a1251d20e250037941a32f460dad42ffad730a9f61dc36d572a121a6317"

      def install
        bin.install "popeye"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.21.2/popeye_darwin_amd64.tar.gz"
      sha256 "36ae6d25f5f6d801948b7bd3b5755d65e35912e1784c4d9c6f2b78bc45a2912e"

      def install
        bin.install "popeye"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/derailed/popeye/releases/download/v0.21.2/popeye_linux_arm64.tar.gz"
      sha256 "0e09a5bdd85b86ee6120217bb7896cf8efa504018a7ff501f262757c1dfaa7bb"

      def install
        bin.install "popeye"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/derailed/popeye/releases/download/v0.21.2/popeye_linux_amd64.tar.gz"
      sha256 "3fb39792ce552dba34a1dc4da98b2a7b8df01bbab826d4d487018261d945ef76"

      def install
        bin.install "popeye"
      end
    end
  end

  test do
    system "popeye version"
  end
end
