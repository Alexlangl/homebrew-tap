cask "codex-companion" do
  version "0.1.41"
  sha256 "bedfbb9b6ce231543d5cd862168eba82dfe32536d4714403cf6d3121ff83a7b9"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.41/Codex-Companion-0.1.41-macos-universal-dmg.dmg"
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
