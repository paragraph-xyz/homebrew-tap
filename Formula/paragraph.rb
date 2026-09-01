class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://github.com/paragraph-xyz/paragraph-cli"
  url "https://github.com/paragraph-xyz/paragraph-cli/releases/download/v0.4.0/paragraph-cli-v0.4.0.tgz"
  sha256 "f66b4a5f2a4be6cccf3a3628daadcbce8736de9e0254e1fbe49d5f85e57f1409"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/paragraph --version").strip
  end
end
