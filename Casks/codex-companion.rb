cask "codex-companion" do
  version "0.1.38"
  sha256 "9add826cf0197ab655d482823e9fd513c99e9507a6d821a0a52f47ba188feb31"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.38/Codex-Companion-0.1.38-macos-universal-dmg.dmg"
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
