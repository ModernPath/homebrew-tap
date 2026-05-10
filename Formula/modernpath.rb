# typed: false
# frozen_string_literal: true

class Modernpath < Formula
  desc "Connect your local development environment to ModernPath for AI-powered codebase analysis"
  homepage "https://modernpath.ai"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-arm64.tar.gz"
      sha256 "b8d6472dd9a52e77915ee243e6a633c92ebd5cbd42993ba9730560d528d1eee6"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_AMD64_SHA256"

      def install
        bin.install "modernpath"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64_SHA256"

      def install
        bin.install "modernpath"
      end
    end
  end

  test do
    assert_match "ModernPath CLI", shell_output("#{bin}/modernpath --help")
  end
end
