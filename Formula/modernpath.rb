# typed: false
# frozen_string_literal: true

class Modernpath < Formula
  desc "Connect your local development environment to ModernPath for AI-powered codebase analysis"
  homepage "https://modernpath.ai"
  license "MIT"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-arm64.tar.gz"
      sha256 "775ca8710802cf651ba85c01a8608aaf744b2c444a8cbe384e7064621804eb4c"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-amd64.tar.gz"
      sha256 "b46b39d18a1200b93cde4162a6bf1cf7bd759d528a1ae97a4f22335ac1ebc13a"

      def install
        bin.install "modernpath"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-arm64.tar.gz"
      sha256 "d165404e2e31e125fbeed3d887511a47bd11a95e402397f5f1290044f4cec8f7"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-amd64.tar.gz"
      sha256 "c64821952ccbb2c26b5422a8d580bab44279a04f48ab97ec829989fa8bc6cceb"

      def install
        bin.install "modernpath"
      end
    end
  end

  test do
    assert_match "ModernPath CLI", shell_output("#{bin}/modernpath --help")
  end
end
