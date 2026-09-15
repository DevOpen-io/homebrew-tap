class Macmaid < Formula
  version "0.9.31"
  sha256 "7828540d622b2317ebb7b036938802e5b794dc47df54a21b8253ab1e5801fed7"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.31/MacMaid-0.9.31-arm64-cli.tar.gz"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  def install
    bin.install "macmaid"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/macmaid --version")
  end
end
