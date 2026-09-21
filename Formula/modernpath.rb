# typed: false
# frozen_string_literal: true

class Modernpath < Formula
  desc "Connect your local development environment to ModernPath for AI-powered codebase analysis"
  homepage "https://modernpath.ai"
  license "MIT"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-arm64.tar.gz"
      sha256 "62202bdae09fb0db65168d8b779643cb5dda46fc03690d77f591faff69a6694a"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-amd64.tar.gz"
      sha256 "fea7871b543986d06735a4e65ebfc1c8bbbad4e1ad13e2984ed06443d1cb5866"

      def install
        bin.install "modernpath"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-arm64.tar.gz"
      sha256 "f189975c6454da3c898de26c1e1323a9d9695906abe7874f7a48c47738f604cd"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-amd64.tar.gz"
      sha256 "ce219570e87fc22453ff1b18f08b135ee7996a2b10969cb5bcb9779589408ff8"

      def install
        bin.install "modernpath"
      end
    end
  end

  test do
    assert_match "ModernPath CLI", shell_output("#{bin}/modernpath --help")
  end
end
