require 'formula'

class CcTool < Formula
  homepage 'http://cctool.sourceforge.net/'
  url 'http://downloads.sourceforge.net/project/cctool/cc-tool-0.26-src.tgz'
  sha1 'f313e55f019ea5338438633f5b5e689b699343e1'

  depends_on 'libusb'
  depends_on 'boost'
  depends_on 'pkg-config' => :build

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
