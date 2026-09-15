cask "macmaid" do
  version "0.9.28"
  sha256 "b3cf20165b5a03b76e7fb931a72617a6ff2c59af02e7ad055e6810a9dc954fd0"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.28/MacMaid-0.9.28-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
