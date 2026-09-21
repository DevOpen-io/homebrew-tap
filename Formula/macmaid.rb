class Macmaid < Formula
  version "0.14.10"
  sha256 "887449c1e9f53ba137a60c8b1376274e2913883572b2b90aad83552dfcb991fb"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.14.10/MacMaid-0.14.10-arm64-cli.tar.gz"
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
