class Macmaid < Formula
  version "0.9.28"
  sha256 "15bc28167ed22f75934f00c08cf4466fa5aab445198be466fe3b3c3e21165789"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.28/MacMaid-0.9.28-arm64-cli.tar.gz"
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
