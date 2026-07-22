cask "codex-companion" do
  version "0.1.2"
  sha256 "70ff2a875b2f887fea58159585d4e6a09fae748536283206101ab450b635d021"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.2/Codex-Companion-0.1.2-macos-universal-dmg.dmg"
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
