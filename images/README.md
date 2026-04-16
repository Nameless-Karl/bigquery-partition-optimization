# Optimizing Query Performance Using Partitioned Tables in BigQuery

## Problem
A dashboard querying taxi trip data was slow and expensive due to scanning the entire dataset.

## Approach
Used partition filtering on `pickup_datetime` to reduce scanned data.

## Queries Tested

### Full Scan Query
Processes ~489 MB

### Partition Filtered Query
Processes ~10 MB

## Key Insight
Partition filters reduce scanned data significantly, improving performance and reducing cost.

## Tools
- Google BigQuery

## Outcome
~50x reduction in data scanned
