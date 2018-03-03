mossel_tov
==========

An Extension to Stanford's MOSS plagiarism detection that generates detects plagiarism and neatly groups the results based on similarity. Used in 2014/2015 to detect plagiarism for an introductory CS course at Rutgers University.

When you use MOSS for a large course that consists of over 500+ students, MOSS results by themselves are quite difficult to read. You can see a one to one relationship, but that's not good enough. This extension will group the results that MOSS generates into clusters of students whos work all appear similar to one another. This is especially useful for introductory courses, where code is more likely to be copied.


Instructions
============
1. Run `make` to build the binary file.
2. `wget` MOSS results page and save it as `index.html`
3. `./mossel_tov`
4. View results inside `mossel_tov.html` in your web browser.
