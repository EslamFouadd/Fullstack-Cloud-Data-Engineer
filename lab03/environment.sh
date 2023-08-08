# Load another subset of the same 2018 trip data that is available on Cloud Storage. And this time, let's use the CLI tool to do it.

bq load \
--source_format=CSV \
--autodetect \
--noreplace  \
nyctaxi.2018trips \
gs://cloud-training/OCBL013/nyc_tlc_yellow_trips_2018_subset_2.csv
