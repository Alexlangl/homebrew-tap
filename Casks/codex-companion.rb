cask "codex-companion" do
  version "0.1.34"
  sha256 "8994f87e6b82202c7a5d8785c015525ad5bbbff683093c18a03a2afe69e63a94"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.34/Codex-Companion-0.1.34-macos-universal-dmg.dmg"
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
