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

#### Install Texinfo Info Manual

I use this reference extensively.  It is comprehensive, and probably
definitive.  It is organized into useful categories that make it easy
to find what you're looking for.

The *info* file for writing *info* files can be installed
with the following commands:

~~~sh
wget https://www.gnu.org/software/texinfo/manual/texinfo/texinfo.info.tar.gz
tar -xzvf texinfo.info.tar.gz
gzip texinfo.info
sudo mv texinfo.info.gz /usr/share/info
sudo install-info /usr/share/info/texinfo.info.gz /usr/share/info/dir
~~~

Please browse this reference.  You may find it contains all the
information you need for developing **info** pages.

#### Install GNU C Library Texinfo Source for Style Guide

While the **info texinfo** manual defines the language for writing
*Texinfo* files, it is not a style guide.  For example, there is a
*A Sample Function Definition*, but it shows how to define an *elisp*
function.  The non-typed *elisp* function is not a sufficient model
for a typed C function.

Go to an appropriate directory for extracting the source files, then
download and unpack with the following commands:

~~~sh
wget https://www.gnu.org/software/libc/manual/texi/libc-texi.tar.gz
tar -xf libc-texi.tar.gz
~~~

##### Info Search

Once you find illuminating info examples, you will want to return to
them.  To open **info** to a specific page, use the **--index-search**
command line option.  The following command will jump directly to the
sample function declaration in the *info texinfo* page:

~~~sh
info texinfo --index-search A\ Sample\ Function
~~~

### Online Resources

- [Texinfo - The GNU Documentation System](https://www.gnu.org/software/texinfo/)  
  is a page with many links.  Look through this page to find useful
  information for your situation.

- [Linux Journal: What's GNU: Texinfo](https://www.linuxjournal.com/article/2840)  
  is one of the links on the GNU link at the top of this list.
  It is helpful starting point for developing an *info* page.

- [Texinfo Reference Card](http://git.savannah.gnu.org/cgit/texinfo.git/plain/doc/refcard/txirefcard.pdf)  
  is sort of a cheatsheet for Texinfo.  I have found it relatively hard to
  use because it's hard to scan the large amount of information, but
  until I installed the **texinfo** info file, it was my best reference.
