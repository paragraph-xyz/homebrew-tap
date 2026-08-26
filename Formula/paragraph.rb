class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://github.com/paragraph-xyz/paragraph-cli"
  url "https://github.com/paragraph-xyz/paragraph-cli/releases/download/v0.3.3/paragraph-cli-v0.3.3.tgz"
  sha256 "3fcfe88fb2ba689f63ea9440658faced0b04f4b69ceefbbbd3cdb342fbceada9"
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
