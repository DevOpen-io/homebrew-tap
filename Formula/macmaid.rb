class Macmaid < Formula
  version "0.12.0"
  sha256 "687f0f54991c7477762a741c7a3854d30bc0346381099aafd43cd17ba4602b6b"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.12.0/MacMaid-0.12.0-arm64-cli.tar.gz"
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
