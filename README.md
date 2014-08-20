mossel_tov
==========

An Extension to Stanford's MOSS plagiarism detection that generates groups the results

When you use MOSS for a large course that consists of over 500+ students, MOSS results by themselves are quite difficult to read. You can get see a one to one relationship, but that's not good enough. This extension will group the results that MOSS generates into a one to many relationship, where a single group is a collection of students who's work are all similar. This is ESPECIALLY useful if the course is an introductory course, where code is more likely to be copied (identical).


Instructions
============
1. Run "make" to build the binary file.
2. wget MOSS results page and save it as "index.html"
3. ./mossel_tov
4. View results inside mossel_tov.html in your favorite web browser.
