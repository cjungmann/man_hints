# MAN HINTS

I have fallen in love with **man** pages, after many years of
exclusive Linux use.  I was slow to embrace the interface,
but now use **man** extensively.  It only makes sense for me
to also document my development work with **man** and pages.

However, I don't write man pages very often, so I have to
relearn the process each time.  I am creating this project to
be a collection of instructions and tips that I hope will help
with the writing of man pages.

## System Integration

**man** pages are typically stored in `/usr/share/man/` and
its subdirectories.

## Writing **man** Pages

- You will likely use the *groff* format to write **man**
  pages, though I've seen intermediate formats that can be
  converted to *groff*.

- The filename extension indicates the *section* to which
  the **man** page belongs.  Consult `man man-pages` for
  section descriptions.

- Preview your **man** page with the local option of the
  **man** utility.  Assuming you are working on a *man*
  page named *myutility.7*, preview with

  ~~~sh
  man -l myutility.7
  ~~~

## Installing **man** Pages

-  **man** pages are stored in directory `/usr/share/man/`
   and its subdirectories.  There are subdirectories for
   each section (ie `/usr/share/man/man3` where you should
   install the appropriate **man** files.

- **man** pages are typically stored in compressed format.
  For example, `man 3 printf` is saved in `/usr/share/man/man3`
  as *printf.3.gz*.

- Install a compressed **man** page with the following
  commands.  Note that running *gzip* will replace the
  uncompressed file with the compressed file.  That is,
  you will not have to remove the uncompressed file.

  ~~~sh
  sudo cp your_man.3 /usr/share/man/man3
  sudo gzip -f /usr/share/man/man3/your_man.3
  ~~~

## Resources

### Offline Resources

These are **man** pages that help with **man** page development:

- __man less__ **man** pages are displayed using the *less*
  utility.  Reading the **man** page to improve your skills
  navigating the **man** pages will pay off.

- __man man__ This **man** page tells how to use **man** pages,
  and is useful for reviewing what **man** pages are expected
  to deliver.

- __man man-pages__ This **man** page is a style-guide for
  **man** page development.  It includes expected section names,
  examples including *groff* formatting, preferred spellings,
  etc.  It's too much to absorb all at once, but it rewards
  occasional review.

- __man 7 groff__ contains information about writing a
  generic *groff* document.

- __man 7 groff_man__ documents the markup/macros that can
  be used to write a **man** page.  This **man** page was **not**
  included in my Ubuntu distribution.  See below for help
  installing *groff-man(7)*.

- I like to refer to a standard *groff* file of a **man**
  page.  I am referring to *asctime.3* because it not only
  includes function definitions in the **SYNOPSIS**, but
  also an example of a struct definition in the
  **DESCRIPTION**.

- The following example demonstrates how to extract the
  *groff* text file from the compressed **man 3 asctime**
  page.

  ~~~sh
  sudo cp /usr/share/man/man3/asctime.3.gz .
  gunzip asctime.3.gz
  ~~~


## Installing Missing **man** Pages

When reading the *groff man* page, I noticed that most of the
**SEE ALSO** **man** pages were not installed on my computer.
It was not easy to find or install these useful files.

Sometimes, installing missing **man** pages is a simple as
invoking your package manager to install the -dev packages
of software.

For the *groff*-related pages, navigate to this
[Gnu Groff Sourceforge page](http://downloads.sourceforge.net/gnuwin32/groff-1.20.1-doc.zip).
There are many subdirectories in this *zip* file.  You
will find *groff_man.7 in `/man/man7`.

To install *groff_man.7*, copy the following commands into a
terminal window.

~~~sh
sudo wget http://downloads.sourceforge.net/gnuwin32/groff-1.20.1-doc.zip
sudo unzip groff-1.20.1-doc.zip man/man7/groff_man.7 -d /usr/share
sudo gzip -f /usr/share/man/man7/groff_man.7
~~~

  


