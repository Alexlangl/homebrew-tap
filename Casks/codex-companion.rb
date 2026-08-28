cask "codex-companion" do
  version "0.1.29"
  sha256 "261229d670416dc096e19b5061706ecc7962a29a4ef9c32d097f269b9e775f8f"

  url "https://github.com/Alexlangl/codex-companion/releases/download/v0.1.29/Codex-Companion-0.1.29-macos-universal-dmg.dmg"
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
