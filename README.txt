README for qlClearCache 0.1.0
By Sriranga Veeraraghavan <ranga@calalum.org>

qlClearCache is a LaunchAgent plist file for MacOSX Lion (10.7) newer
that clears the QuickLook cache every two hours.qlClearCache.  For more
information, see:

https://objective-see.com/blog/blog_0x30.html

To install:

$ make install

To run (if you didn't run "make install", or "make install" didn't work):

$ /bin/launchctl load ~/Library/LaunchAgents/org.calalum.ranga.qlclearcache.plist

or

Log out and log back in

History:

v. 0.1.0 (06/18/2018) - Initial release

License:

See LICENSE.txt

See Also:

https://nathangrigg.com/2012/07/schedule-jobs-using-launchd#plist
https://stackoverflow.com/questions/4485972/library-launchagents-plist-runs-manually-but-not-automatically#10580187

