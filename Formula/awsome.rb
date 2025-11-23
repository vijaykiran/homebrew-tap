class Awsome < Formula
  desc "AWSome AWS TUI"
  homepage "https://github.com/vijaykiran/awsome-cli"
  version "0.3.0"
  license "Apache-2.0"

  if Hardware::CPU.intel?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.3.0/awsome-0.3.0-x86_64-apple-darwin.tar.gz"
    sha256 "e5b9d62b571f74741cb075b7feaee61e41413713a10d80a3e8b761d1c0934a4d"
  elsif Hardware::CPU.arm?
    url "https://github.com/vijaykiran/awsome-cli/releases/download/v0.3.0/awsome-0.3.0-aarch64-apple-darwin.tar.gz"
    sha256 "af13c020a2cfc5078c1395da794024ee370e2af7882f747a997dd9e1b102fe80"
  end

  def install
    bin.install "awsome"
  end

  test do
    system "#{bin}/awsome", "--version"
  end
end
