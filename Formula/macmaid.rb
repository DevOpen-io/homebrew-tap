class Macmaid < Formula
  version "0.11.4"
  sha256 "d1c89e73410ae4c1cf32e7e9c078cc5be3dc43c89517cba66b31889f42760043"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.4/MacMaid-0.11.4-arm64-cli.tar.gz"
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
