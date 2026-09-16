class Macmaid < Formula
  version "0.11.19"
  sha256 "b93ad17bb97f75074ee783ff644f6147ae644f4e7726c81ca23cb8b113cfe75d"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.19/MacMaid-0.11.19-arm64-cli.tar.gz"
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
