cask "macmaid" do
  version "0.14.18"
  sha256 "80f36cbe3b9888252246acd93044d3f1d915a0efd4d1bb4e0372aeef66f09367"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.14.18/MacMaid-0.14.18-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
