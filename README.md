# A minimal R project with make

This is a minimal R project (e.g. the starting point for a new analysis, study or report) which uses [GNU make](https://www.gnu.org/software/make/) to automatically test R code (with package [`testthat`](https://github.com/hadley/testthat)) and generate an HTML report (with [R Markdown](http://rmarkdown.rstudio.com/)).

The easiest way to get to grips with this package is to [clone the repository](https://help.github.com/articles/cloning-a-repository/#platform-linux) to your local UNIX-like environment, and run `make`.

Creation of this repository was motivated by blog posts by [Karl Broman](http://kbroman.org/minimal_make/) and [Jon Zelner](http://www.jonzelner.net/statistics/make/reproducibility/2016/06/01/makefiles/) about using make and Makefiles with R, with additional inspiration on the incorporation of dummy tests from the [r-lcfd](https://github.com/sloria/r-lcfd) repository by Steven Loria.

More in-depth examples of using make and Makefiles with R can be found via the blog posts linked above, or the [example-r-analysis](https://github.com/klmr/example-r-analysis) repository, by Konrad Rudolph.

## Basic usage

To use this example project, on any UNIX-based system with access to the bash shell, simply clone it to a local directory:

>`git clone --depth 1 https://github.com/bjcairns/minimal-r-project-with-make`

(Note that `--depth 1` means that only the latest revision is cloned, not the entire history of this repository.) From your local directory you can then use GNU make to build the dummy analysis report:

>`make`

You can also try:

>`make clean`  
>`make test`  
>`make report`

After successful completion of `make` (or `make report`), you can find the HTML output in file `./output/report.html`. If the tests were also run (or after `make test`), test results will be in file `test_output/test.out`. (The `make clean` command deletes all contents of the `./output` and `./test_output` directories in preparation for a fresh build of the project.)

## License

This work is licensed under the MIT License, meaning that you can do what you like with it provided that you include a copy of the permission notice (file `LICENSE`) with any copies or substantial portions of the software.

However, any actual analysis project (i.e. not an example or template project like this one) is likely to retain only minor portions of this minimal project. In that case you could:

>`git rm LICENSE`  
>`git commit -m "Delete original LICENSE as per README.md"`

and continue developing your project (perhaps then adding an open source license of your own).

