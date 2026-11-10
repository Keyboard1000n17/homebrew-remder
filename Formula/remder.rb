class Remder < Formula
  desc "Render your markdown with lots of bells and whistles!"
  homepage "https://github.com/Keyboard1000n17/remder"
  version "1.0.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/Keyboard1000n17/remder/releases/download/remder-v#{version}/remder-darwin-arm64"
      sha256 "89e42f32d0ab5cef40d3ad1f021ed6e47ce121c0503fbed47e98d5ca729b5fd7"
    end
    on_intel do
      url "https://github.com/Keyboard1000n17/remder/releases/download/remder-v#{version}/remder-darwin-x64"
      sha256 "dfa146bdf28941aa36227e77eb6a856c75e7301ae6bdfe5c6e31a7558548b61b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Keyboard1000n17/remder/releases/download/remder-v#{version}/remder-linux-arm64"
      sha256 "13afcb79363bd5b6076ac5392d4bedb0ce8c0a5df26ecbd02843671d72ad3c9b"
    end
    on_intel do
      url "https://github.com/Keyboard1000n17/remder/releases/download/remder-v#{version}/remder-linux-x64"
      sha256 "d99ceeacefa214f86561384f315fd3c1f9b24fb0283a5dadd9b4acecc5a1cfcb"
    end
  end

  def install
    bin.install cached_download => "remder"
  end

  test do
    assert_match "hello world!", shell_output("echo 'hello world!' | #{bin}/remder -o")
  end
end
