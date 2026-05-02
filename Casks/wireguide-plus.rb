cask "wireguide-plus" do
  version "1.0.5"
  sha256 "4ddc22e5fc59928519e531fe74f35473e3e70075c8018e7681c79670a6b7ca49"

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
