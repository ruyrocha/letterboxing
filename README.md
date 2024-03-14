# Letterboxing

Quoting [Letterboxd FAQ section](https://letterboxd.com/about/faq/):

> Wikipedia defines letterboxing as the practice of transferring film shot in a widescreen aspect ratio to standard-width video formats while preserving the original aspect ratio. Generally this is accomplished by adding mattes (or ‘black bars’) above and below the picture area. Letterboxd is named for our love of the widescreen format, and has nothing whatsoever to do with orienteering or that thing in Stand By Me. Here’s some history.

The project itself has the unique goal of having scaffold for the resources identified below with some data, so you can make your different kinds of experiments.

# What About the Numbers?

Here are the exact numbers after removing just a few invalid IDs from the CSVs:

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

You can find a SQL file containing the dump for the development database in `db/app_development.sql.gz`. Also, all data was taken from [Letterboxd on Kaggle](https://www.kaggle.com/datasets/gsimonx37/letterboxd/).

Please note you can find records that seem to be invalid as well.

# Current Stack

Built with Ruby 3.2.3, Rails 7.1.3.2, using PostgreSQL 16 as the database (on a rootless container) and TailwindCSS.

