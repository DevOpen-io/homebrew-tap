cask "macmaid" do
  version "0.11.4"
  sha256 "c04c39dbab13da1d2c0acff0c1fce5fa6aa72252cc42ae887fd0a989c509d5be"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.11.4/MacMaid-0.11.4-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
