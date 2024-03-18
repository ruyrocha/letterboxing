# Letterboxing

Quoting [Letterboxd FAQ section](https://letterboxd.com/about/faq/):

> Wikipedia defines letterboxing as the practice of transferring film shot in a widescreen aspect ratio to standard-width video formats while preserving the original aspect ratio. Generally this is accomplished by adding mattes (or ‘black bars’) above and below the picture area. Letterboxd is named for our love of the widescreen format, and has nothing whatsoever to do with orienteering or that thing in Stand By Me. Here’s some history.

The project itself has the unique goal of having scaffold for the resources identified below with some data, so you can make your different kinds of experiments.

# What About the Numbers?

Here are the exact numbers for each model:

| Model    | Totals |
| -------- | ------ |
| Actor    | 5_523_326 |
| Country  | 617_356   |
| Crew     | 4_393_608 |
| Genre    | 990_766   |
| Language | 988_816   |
| Movie    | 896_382   |
| Release  | 1_239_150 |
| Studio   | 642_058   |
| Theme    | 173_509   |

You can download the SQL file for each model from [letterboxd on Kaggle](https://www.kaggle.com/datasets/ruyrocha/letterboxd/data).

# Current Stack

Built with Ruby 3.2.3, Rails 7.1.3.2, using PostgreSQL 16 as the database (on a rootless container) and TailwindCSS.

