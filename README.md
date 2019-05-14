# baby-princess.xyz
Source code for my website

## structure
* build-page.sh - used to convert from markdown to html needs smu (https://github.com/Gottox/smu it's really easy to install clone the repo, then make then as root (sudo, or doas) make install).
* markdown dir - the markdown files used to build the pages.
* html dir - the dir for the outputted html files
* html dir/style.css - the stylesheet used for the HTML files.

now you may be wondering why is the stylesheet is in the html dir?

well, the web server i use which is quark (https://git.suckless.org/quark.git) chroots into the html dir, and sets the UID bit, to keep it secure, due to it chrooting, it has to be in the same dir that is being servered.

## Usage:
* clone this repo and cd into it
* cd into markdown
* chmod +x ../build-page.sh
* ./../build-page.sh <file>.md
## hosting:
  hosted with quark from the html dir
  
  * clone the quark repository
  * cd into it then run make, then as root however you wish to gain root permissions, run make install.
  
  next to serve the html dir you would do something like this
  `quark -h <your local IP address> -p 80 -l -d html/` (i am currently learning how to setup vhosts).
