# UCB CS 61A SICP Coursework

A repo to store my work done on the UCB CS 61A course from Summer 2010.

You can find the course resources [here](https://inst.eecs.berkeley.edu//~cs61a/su10/index.html#resources).

## How to run Scheme code on Linux

1. Download STKloss from [here](https://www.stklos.net/download.html).
2. Untar the archive:

    ```# tar -uxf stklos-{VERSION}.tar.gz```

3. cd into the folder:

    ```# cd stklos-{VERSION}```

4. Configure:

    ``` # ./configure ```

5. Make:

    ``` # make ```

6. install (sudo may be required):

    ``` # make install ```


## Running STKlos REPL

``` # stklos ```

## Running .scm files

``` #stklos -f test.scm ```

## Using course specific functions

In order to use course specific functions, make sure to add ``` (load "simply.scm") ``` to the top of your programs or into the STKlos REPL. Requires relative import.

