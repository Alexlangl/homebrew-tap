cask "codex-companion" do
  version "0.1.20"
  sha256 "0969bb17928338186842f774f1ec86e3629362083d87cf39491feee5ab3b1237"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.20/Codex-Companion-0.1.20-macos-universal-dmg.dmg"
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
