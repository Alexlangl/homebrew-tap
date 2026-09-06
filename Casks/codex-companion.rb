cask "codex-companion" do
  version "0.1.30"
  sha256 "580dd0ca6e9df63f0624b6766c9b01cebd2873f94b5c69a4228c796ec2443a89"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.30/Codex-Companion-0.1.30-macos-universal-dmg.dmg"
  name "Codex Companion"
  desc "Local provider runtime, relay, and state continuity tool for Codex"
  homepage "https://github.com/Alexlangl/codex-companion"

  app "Codex Companion.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Codex Companion.app"]
  end

  zap trash: "~/.codex-companion"
end
