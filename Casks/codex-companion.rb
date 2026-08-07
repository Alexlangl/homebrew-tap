cask "codex-companion" do
  version "0.1.18"
  sha256 "c703b4d0c8f2a69a812e5986f2d6f5f1b3826467051aea0fbdd6bf5488656a25"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.18/Codex-Companion-0.1.18-macos-universal-dmg.dmg"
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
