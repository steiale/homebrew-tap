cask "wireguide-plus" do
  version "1.0.4"
  sha256 "d9b9afb26d66c379d618b5b861aaca5643adecdd7756ce01a173ebda516be5dc"

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
