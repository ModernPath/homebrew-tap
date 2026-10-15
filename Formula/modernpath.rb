# typed: false
# frozen_string_literal: true

class Modernpath < Formula
  desc "Connect your local development environment to ModernPath for AI-powered codebase analysis"
  homepage "https://modernpath.ai"
  license "MIT"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-arm64.tar.gz"
      sha256 "08ab004773736a3013fd126b7e769496823434e5f672a000f10bf41090b18e09"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-darwin-amd64.tar.gz"
      sha256 "d2d81a2b91ccee5ef212ae7000ed14bc46bd687f1e4cfd0572b150234255a1d6"

      def install
        bin.install "modernpath"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-arm64.tar.gz"
      sha256 "881a62c9bd87f9125d0fd33da9da5e574120ec65ac24e5cd6b3b38ebe73e3415"

      def install
        bin.install "modernpath"
      end
    else
      url "https://github.com/modernpath/cli/releases/download/v#{version}/modernpath-linux-amd64.tar.gz"
      sha256 "5730e7de9db9047b33aa9f41104ecf94ffef5b23ffd3d174c70cae0804769fe1"

      def install
        bin.install "modernpath"
      end
    end
  end

  test do
    assert_match "ModernPath CLI", shell_output("#{bin}/modernpath --help")
  end
end
