class Macmaid < Formula
  version "0.9.35"
  sha256 "fbe79cfc399b76641c573fb665b0c3c59370665dec93d716b2aa9ad1b46cb8d4"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.35/MacMaid-0.9.35-arm64-cli.tar.gz"
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
