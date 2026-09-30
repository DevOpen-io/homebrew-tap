class Macmaid < Formula
  version "0.15.6"
  sha256 "bcd90bd7ad4a761972a52a34e3652fa4399c12c20667d3eb511cd0a8d412de87"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.6/MacMaid-0.15.6-arm64-cli.tar.gz"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"macmaid"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/macmaid --version")
  end
end
