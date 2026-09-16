cask "macmaid" do
  version "0.11.2"
  sha256 "6e51b0d1fe14ac57c68b090474221751ecdd0f9978a82e2cce5462f38e1bc92a"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.2/MacMaid-0.11.2-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
