class Paragraph < Formula
  desc "CLI for Paragraph — manage posts, subscribers, and publications"
  homepage "https://docs.paragraph.com/developers/cli"
  url "https://registry.npmjs.org/@paragraph-com/cli/-/cli-1.1.0.tgz"
  sha256 "b6650790c0abe95dbc3208ebbabdc2156ce4b6fd2d8f1869e94550642878b7d3"
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
