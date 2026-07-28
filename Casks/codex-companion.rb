cask "codex-companion" do
  version "0.1.8"
  sha256 "857b16754a3b0efa174102f04efeeaebd3d8ffc0c68794f1892fc7fd49b27a62"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.8/Codex-Companion-0.1.8-macos-universal-dmg.dmg"
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
