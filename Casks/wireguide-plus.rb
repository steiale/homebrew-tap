cask "wireguide-plus" do
  version "1.0.19"
  sha256 "85af5e9a8379c4261492aa6e98f759088b847d0377869dfbb5ac2136dff00adc"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/wireguide-plus-v#{version}-darwin-universal.zip"
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
