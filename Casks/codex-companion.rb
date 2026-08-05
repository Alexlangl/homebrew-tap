cask "codex-companion" do
  version "0.1.14"
  sha256 "a7266e1302e2a3cee131c2336d544d30d1b6cb443fd85d166e52533d1578a1dd"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.14/Codex-Companion-0.1.14-macos-universal-dmg.dmg"
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
