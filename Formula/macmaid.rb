class Macmaid < Formula
  version "0.11.2"
  sha256 "bd96465c4609b24cbc860d9429e96562ee3a651955513440d775ea71f8726673"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.2/MacMaid-0.11.2-arm64-cli.tar.gz"
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
