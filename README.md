My modifications to the default Ambiance theme in Ubuntu 10.10.

Great theme, but I don't like the fact that the menu bars are colored the same as the title bars.  This seems to make sense for very few applications, and it makes it harder to visually determine a window's drag area.

You might also be interested in [how to change the window buttons](http://www.howtogeek.com/howto/13535/move-window-buttons-back-to-the-right-in-ubuntu-10.04/).  I used `menu:minimize,maximize,close`.

Done so far
-----------

 * Change menu bar, menu, and dropdown box color to same light gray as toolbar color
 * See the [commit log](http://github.com/nylen/Ambiance-theme-mod/commits/master) for more details

Installing the modified theme
-----------------------------

Run this command:
    wget http://tinyurl.com/ambiance-mod-installer -O- | sh

Or, equivalently:
    wget http://github.com/nylen/Ambiance-theme-mod/raw/master/install.sh -O- | sh

This will install my modified theme and create a backup of your current theme files in `/usr/share/themes/Ambiance-backup`.  You can restore the old theme at any time using that backup or using `sudo apt-get install --reinstall light-themes`.

Still left to do
----------------

 * Fix active menu bar text color in Firefox
 * Or, just make the active menu bar look selected in all applications
 * Make the resizable window border bigger than 1px (what were they thinking???)
