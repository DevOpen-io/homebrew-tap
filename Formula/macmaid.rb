class Macmaid < Formula
  version "0.14.18"
  sha256 "08181fd5570be240d3369c68998f5c34f91558953a67bca6417a4e5b5e74a8ef"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.14.18/MacMaid-0.14.18-arm64-cli.tar.gz"
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
