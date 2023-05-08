# UCB CS 61A SICP Coursework

A repo to store my work done on the UCB CS 61A course from Summer 2010. Part of my quest to learn CS from [https://teachyourselfcs.com](https://teachyourselfcs.com).

You can find the course resources [here](https://inst.eecs.berkeley.edu/~cs61a/sp10).

Youtube lecture playlist I'm following [here](https://www.youtube.com/playlist?list=PLhMnuBfGeCDNgVzLPxF9o5UNKG1b-LFY9).


## How to run Scheme code

0. (If on Apple Silicon) you need to install the `libffi` and `pcre` libraries using homebrew.

1. Download STKloss from [here](https://www.stklos.net/download.html).

2. Untar the archive:

    ```# tar -xvf stklos-{VERSION}.tar.gz```

3. cd into the folder:

    ```$ cd stklos-{VERSION}```

4. Configure:

    ``` $ ./configure ```

5. Make:

    ``` $ make ```

6. install (sudo may be required):

    ``` $ make install ```


## Running STKlos REPL

``` $ stklos ```

## Running .scm files

``` $ stklos -f test.scm ```

## Using course specific functions

In order to use course specific functions, make sure to add ``` (load "simply.scm") ``` to the top of your programs or into the STKlos REPL. Requires relative import.

