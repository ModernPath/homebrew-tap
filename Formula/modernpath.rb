# typed: false
# frozen_string_literal: true

class Modernpath < Formula
  desc "Connect your local development environment to ModernPath for AI-powered codebase analysis"
  homepage "https://modernpath.ai"
  license "MIT"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-arm64.tar.gz"
      sha256 "5e15d7cf1af3d5cc0c590e19b9ce2cfb1ff7822e85f4f479c7dfc66c27bfedf1"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-amd64.tar.gz"
      sha256 "6624f372de5e798b7123ba34b045f6275713be89defcab265a605d2ad397cab0"

      def install
        bin.install "modernpath"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-arm64.tar.gz"
      sha256 "fa50ac844be2f8a9e64d3364d77f6ac77fd55b54461f7c8924c9edcc92ea4319"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-amd64.tar.gz"
      sha256 "eb2ca3a116f0983d328fae2ac08b13f605ea542e0c642d4f7183ae96edcd3285"

      def install
        bin.install "modernpath"
      end
    end
  end

  test do
    assert_match "ModernPath CLI", shell_output("#{bin}/modernpath --help")
  end
end
