cask "wireguide-plus" do
  version "1.0.12"
  sha256 "8c3bd513bd63c7740f853c6111a2bebd9dfcbfbd90ffee9db12bd7cf18ce35a3"

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
