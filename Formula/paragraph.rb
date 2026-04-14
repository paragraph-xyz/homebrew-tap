class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://github.com/paragraph-xyz/paragraph-cli"
  url "https://github.com/paragraph-xyz/paragraph-cli/releases/download/v0.0.4/paragraph-cli-v0.0.4.tgz"
  sha256 "9a42143b8eb50d2dfa8fa9d0050a107247fe8ee67a85d4535137f11f3546337c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/paragraph --version").strip
  end
end
