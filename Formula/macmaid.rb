class Macmaid < Formula
  version "0.15.26"
  sha256 "84e4e4bda8d1697256a6a4b10441b57daf80dbad299389544dc6357fb9120bd7"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.15.26/MacMaid-0.15.26-arm64-cli.tar.gz"
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
