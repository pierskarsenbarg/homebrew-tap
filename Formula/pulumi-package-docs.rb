class PulumiPackageDocs < Formula
  desc "Local documentation viewer for parameterized/local Pulumi providers"
  homepage "https://github.com/pierskarsenbarg/pulumi-package-docs"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.0/pulumi-package-docs-darwin-arm64"
      sha256 "a0a1939e904ab9a83d2ed387e6a7a0bf5a0f18db53de8db04ea7b4f48d833d24"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.0/pulumi-package-docs-darwin-x64"
      sha256 "c91dbb796cd898cbb13b055427b1687044b531b8ce9ee089515a0e0cb24c93be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.0/pulumi-package-docs-linux-arm64"
      sha256 "10f33a86ba0e807d72d9d657cfdb7d4a7400bc16eca3c97383ba21e77d0e7e47"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.9.0/pulumi-package-docs-linux-x64"
      sha256 "a802d5e363abce4b2c6d2c390aa822d810216ce1aed79b00fdd400a2736aff3d"
    end
  end

  def install
    bin.install Dir["pulumi-package-docs-*"].first => "pulumi-package-docs"
  end

  test do
    system "#{bin}/pulumi-package-docs", "--help"
  end
end
