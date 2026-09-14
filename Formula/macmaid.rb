class Macmaid < Formula
  version "0.9.22"
  sha256 "47cd0f4d0967adadca3d82ad40c8a6efd2a0b6e546d21d984c924709a2c9998f"

  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.22/MacMaid-v0.9.22-arm64-cli.tar.gz"
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
