class Macmaid < Formula
  version "0.15.15"
  sha256 "8a5968530fff006a0f6fcfb4fdad390292d391192f992bbb825a99b02d67bb53"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.15/MacMaid-0.15.15-arm64-cli.tar.gz"
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
