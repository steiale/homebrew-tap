cask "wireguide-plus" do
  version "1.0.7"
  sha256 "2bb4dd79a65f19c8c8a82c1100bdb89ce4fddf9d37c109a31af7c9898536b324"

  url "https://github.com/steiale/wireguide/releases/download/v#{version}/wireguide-plus-v#{version}-darwin-universal.zip"
  name "WireGuide+"
  desc "WireGuard VPN client with enhanced features — fork of WireGuide"
  homepage "https://github.com/steiale/wireguide"

  app "WireGuide+.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/WireGuide+.app"],
                   sudo: false
  end

  uninstall quit: "io.github.steiale.wireguide-plus"

  zap trash: [
    "~/Library/Application Support/wireguide-plus",
    "~/Library/Logs/wireguide-plus",
    "~/Library/LaunchAgents/io.github.steiale.wireguide-plus.gui.plist",
  ]
end
