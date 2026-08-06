cask "codex-companion" do
  version "0.1.16"
  sha256 "4c1056aa7a4e9b5905814e9a28d8e6d52e534e07edeb77f03dd4adba9122c93f"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.16/Codex-Companion-0.1.16-macos-universal-dmg.dmg"
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
