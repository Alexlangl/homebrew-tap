cask "codex-companion" do
  version "0.1.28"
  sha256 "a59d56f67f3e738d15f158250e098d568ded75d382aa424a063a0c1afc712c47"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.28/Codex-Companion-0.1.28-macos-universal-dmg.dmg"
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
