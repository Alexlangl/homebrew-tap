cask "codex-companion" do
  version "0.1.26"
  sha256 "06bf0782a5344187a79052621cb9e6ccfa9c124dbc9b6bdfcdb51b23677b5e8f"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.26/Codex-Companion-0.1.26-macos-universal-dmg.dmg"
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
