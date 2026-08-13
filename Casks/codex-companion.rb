cask "codex-companion" do
  version "0.1.25"
  sha256 "f5f4915be7ca89f8a30c72974354c04073d4fe49e507588acf77a436dc1881cb"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.25/Codex-Companion-0.1.25-macos-universal-dmg.dmg"
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
