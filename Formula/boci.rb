class Boci < Formula
  desc "Fast Bun drop-in replacement for the OCI CLI"
  homepage "https://github.com/neves/boci"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/neves/boci/releases/download/v0.0.1/boci-darwin-arm64"
      sha256 "0e824720e4d92728fdf4808078cabbf3d79db203ca543f9b383657116e310c17"
    end
    on_intel do
      url "https://github.com/neves/boci/releases/download/v0.0.1/boci-darwin-x64"
      sha256 "05a950687dac97a42050561b813a100c2a9c5c77d2c8a6ee90ff6e3c68780a36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/neves/boci/releases/download/v0.0.1/boci-linux-arm64"
      sha256 "01d714bdf086c87aa122dc506299848fc3efacadc9c5a0912c478fcaf0c0d642"
    end
    on_intel do
      url "https://github.com/neves/boci/releases/download/v0.0.1/boci-linux-x64"
      sha256 "7af06751557a8d037eccdba3389963c879f8aa1f0619d9c5e36a608b71c19091"
    end
  end

  def install
    bin.install Dir["boci-*"].first => "boci"
  end

  test do
    assert_match "3.96.3", shell_output("#{bin}/boci --version")
  end
end
