# Creating Info Files

According to the [GNU](https://www.gnu.org/prep/standards/html_node/GNU-Manuals.html#GNU-Manuals),
*info* files are the preferred format for GNU software
documentation.  Since either or both *info* and *make* format
files may be appropriate for a given project, this brief
guide may help you develop documentation for your project.

## Sample File

The file, info-demo.txi, is a minimal file that you can
use as the start of your *info* documentation.

## Build and Install

~~~sh
sudo makeinfo info-demo.txi
sudo gzip info-demo.info
sudo mv info-demo.info.gz /usr/share/info
sudo install-info /usr/share/info/info-demo.info.gz /usr/share/info/dir
~~~

Check if the installation can be reached:

~~~sh
info info-demo
~~~

## Uninstall

~~~sh
sudo install-info --delete /usr/share/info/info-demo.info.gz /usr/share/info/dir
sudo rm -f /usr/share/info/info-demo.info.gz
~~~

## Resources for Developing Info Files

There are many resources, both online and offline, for
writing and installing *info* files.

### Offline Resources

Since *man* and *info* files are offline resources, one
might expect that a developer of such documents would prefer
to use offline documentation while working on these files.

The *info* file for writing *info* files can be installed
with the following commands:

~~~sh
wget https://www.gnu.org/software/texinfo/manual/texinfo/texinfo.info.tar.gz
tar -xzvf texinfo.info.tar.gz
gzip texinfo.info
sudo mv texinfo.info.gz /usr/share/info
sudo install-info /usr/share/info/texinfo.info.gz /usr/share/info/dir
~~~

### Online Resources

- [Texinfo - The GNU Documentation System](https://www.gnu.org/software/texinfo/)  
  is a page with many links.  Look through this page to find useful
  information for your situation.

- [Linux Journal: What's GNU: Texinfo](https://www.linuxjournal.com/article/2840)  
  is one of the links on the above page.  It is helpful starting
  point for developing an *info* page.

