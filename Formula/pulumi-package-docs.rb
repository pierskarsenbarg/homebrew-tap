class PulumiPackageDocs < Formula
  desc "Local documentation viewer for parameterized/local Pulumi providers"
  homepage "https://github.com/pierskarsenbarg/pulumi-package-docs"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.8.0/pulumi-package-docs-darwin-arm64"
      sha256 "9c3483565732705dbaf242a930e7741db585f98f44d8b89315960b1c691390f8"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.8.0/pulumi-package-docs-darwin-x64"
      sha256 "4c2142120d7a1580dbdca901152e05481339daf59cc0d41c2dee185444414727"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.8.0/pulumi-package-docs-linux-arm64"
      sha256 "38e54746077af8e667b8e73cd01365eb7b34c4bc1b69c2f7c6a1e6b7b71e6f0d"
    end
    on_intel do
      url "https://github.com/pierskarsenbarg/pulumi-package-docs/releases/download/v0.8.0/pulumi-package-docs-linux-x64"
      sha256 "a80c8467b942311fb2fc30de7cbe6ae81f4ef2adb4f0523f1e64cd085d543b19"
    end
  end

  def install
    bin.install Dir["pulumi-package-docs-*"].first => "pulumi-package-docs"
  end

  test do
    system "#{bin}/pulumi-package-docs", "--help"
  end
end
