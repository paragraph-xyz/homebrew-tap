class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://docs.paragraph.com/developers/cli"
  url "https://registry.npmjs.org/@paragraph-com/cli/-/cli-2.1.0.tgz"
  sha256 "4a683b8bd9819c8efcbd5e4c8bf0bd1ad1b724bc9185792340bd9bb4c377ac96"
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
