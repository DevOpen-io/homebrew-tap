class Macmaid < Formula
  version "0.13.2"
  sha256 "526d7868ea691f5812357c094fe0a8565963c7a7f512b53f076e81855a47f4a7"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.13.2/MacMaid-0.13.2-arm64-cli.tar.gz"
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
