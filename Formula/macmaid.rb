class Macmaid < Formula
  version "0.15.5"
  sha256 "2ee1830c42662ae8bc5bdc6edf12dc7fd6dd3a865767a099b89d2a2112974d9a"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.5/MacMaid-0.15.5-arm64-cli.tar.gz"
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
