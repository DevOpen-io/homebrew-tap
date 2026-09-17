class Macmaid < Formula
  version "0.11.35"
  sha256 "cacbe95a39993ab88399e5ac93a98553b82faa0ad0551e4a75519e3a2f1b2e78"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.35/MacMaid-0.11.35-arm64-cli.tar.gz"
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
