# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-ruby/notify/notify-0.3.0.ebuild,v 1.1 2011/11/28 02:17:53 naota Exp $

EAPI=2
USE_RUBY="ruby18 ruby19 ree18 jruby"

RUBY_FAKEGEM_TASK_TEST=""

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="README.md"

inherit ruby-fakegem

DESCRIPTION="A function to notify on cross platform"
HOMEPAGE="http://github.com/jugyo/notify"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="x11-libs/libnotify"
