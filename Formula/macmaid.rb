class Macmaid < Formula
  version "0.13.4"
  sha256 "1f144ebde0f6c845e38bccddf58aa9a87f3eeebfd3d9032017f37c7e8ac67209"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.13.4/MacMaid-0.13.4-arm64-cli.tar.gz"
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
