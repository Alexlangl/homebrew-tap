cask "codex-companion" do
  version "0.1.42"
  sha256 "bf9352c9b1632f27f9cc22dfea2d934e90e7865976262ac72936cc76b2e3b167"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.42/Codex-Companion-0.1.42-macos-universal-dmg.dmg"
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
