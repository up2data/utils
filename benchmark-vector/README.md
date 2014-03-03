benchmark-vector
=====

## Preface

Benchmark-vector provides simple benchmarking tool for Actian Vector (previously Actian Vectorwise) database.
Benchmark queries are based on TPC-H queries with minor changes due to syntax differences.

Benchmark was tested against version 3.0.1 of Actian Vector.

## Usage

### Compile TPC-H database generation (*dbgen*) and query generation (*qgen*) tools
1. Go to tpc/src/dbgen
2. Run make
3. Copy dbgen and qgen binaries to tpc directory

### Run benchmark
1. Create database for benchmarking purposes (ex. testdb)
2. Go to root directory of benchmark-vector
3. Run either run or run_optimized script
* Both scripts needs at least 3 arguments: name of database, dataset size in GB and benchmark repeats.
* Example usage: ./run testdb 1 15
* Benchmark will run every query 15 times against 1GB dataset of testdb database
4. Check results in results
