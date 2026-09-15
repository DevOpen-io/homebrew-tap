cask "macmaid" do
  version "0.9.31"
  sha256 "658c19db4ad3eed9b6c337aeede377bb239ce33d8e9ccfc17da11fd9887dd798"
  url "https://github.com/DevOpen-io/MacMaid/releases/download/v0.9.31/MacMaid-0.9.31-arm64.dmg"
  name "MacMaid"
  desc "Safe macOS cleanup, disk analysis and developer-tool maintenance"
  homepage "https://github.com/DevOpen-io/MacMaid"
  depends_on arch: :arm64
  app "MacMaid.app"
  zap trash: ["~/.config/macmaid", "~/Library/Logs/MacMaid"]
end
