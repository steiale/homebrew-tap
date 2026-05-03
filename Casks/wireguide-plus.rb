cask "wireguide-plus" do
  version "1.0.17"
  sha256 "88cb2e101fb5165e928d03fe595ab9ef4f7a2de7cf953a46d1004da2954f5309"

  url "https://github.com/steiale/wireguide/releases/download/v\#{version}/wireguide-plus-v\#{version}-darwin-universal.zip"
  name "WireGuide+"
  desc "WireGuard VPN client with enhanced features — fork of WireGuide"
  homepage "https://github.com/steiale/wireguide"

  app "WireGuide+.app"

  uninstall quit: "io.github.steiale.wireguide-plus"

  zap trash: [
    "~/Library/Application Support/wireguide-plus",
    "~/Library/Logs/wireguide-plus",
    "~/Library/LaunchAgents/io.github.steiale.wireguide-plus.gui.plist",
  ]
end
