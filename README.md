# A minimal R project with make

This is a minimal R project (e.g. the starting point for a new analysis, study or report) which uses [GNU make](https://www.gnu.org/software/make/) to automatically test R code (with package [`testthat`](https://github.com/hadley/testthat)) and generate an HTML report (with [R Markdown](http://rmarkdown.rstudio.com/)).

The easiest way to get to grips with this project is to [clone the repository](https://help.github.com/articles/cloning-a-repository/#platform-linux) to your local UNIX-like environment, and run `make`.

This project was motivated by blog posts by [Karl Broman](http://kbroman.org/minimal_make/) and [Jon Zelner](http://www.jonzelner.net/statistics/make/reproducibility/2016/06/01/makefiles/) about using make and Makefiles with R, with additional inspiration to incorporate dummy tests from the [r-lcfd](https://github.com/sloria/r-lcfd) repository by Steven Loria.

More in-depth examples of using make and Makefiles with R can be found via the blog posts linked above, and the [example-r-analysis](https://github.com/klmr/example-r-analysis) repository, by Konrad Rudolph.

## Basic usage

The intended use of this project is as template for a non-trivial analysis. If you have a GitHub account, please fork this repository first. Then to get started on any UNIX-based system, simply clone to a new local repository named `new-project` (or whatever you want to call it):

>`git clone --depth 1 https://github.com/USERNAME/minimal-r-project-with-make.git new-project`  
>`git remote remove origin`

Use your own `USERNAME` if you forked the repository to your own account, or `bjcairns` if you did not. (Note: `--depth 1` means that only the latest revision is cloned, and `git remote remove origin` severs the link between your new project and the GitHub repository. You can [set a new remote](https://help.github.com/articles/changing-a-remote-s-url/) if you wish.)

Next use GNU make to build the example analysis report. At the command line, type:

>`cd new-project`  
>`make`

You can also try:

>`make clean`  
>`make test`  
>`make report`

The `make clean` command deletes all contents of the `output` directory in preparation for a fresh build of the project. If the tests are run (on a fresh build, or after `make test`), test results will be sent to stdout and also to file `output/tests.txt`.
 
After successful completion of `make` (or `make report`), you can find the HTML report in file `output/report.html`, a trivial example using R's built-in timeseries dataset, `AirPassengers`.

## License

This work is licensed under the MIT License, meaning that you can do what you like with it provided that you include a copy of the permission notice (file [`LICENSE`](https://github.com/bjcairns/minimal-r-project-with-make/blob/master/LICENSE)) with any copies or substantial portions of the software.

However, any actual analysis project (i.e. not an example or template project like this one) is likely to retain only minor portions of this template. In that case you could:

>`git rm LICENSE`  
>`echo "# My new project" > README.md`  
>`git add README.md`  
>`git commit -m "Delete original LICENSE and replace README.md"`

and continue developing your project. Don't forget to add a new `LICENSE` file if you choose to share your work.
