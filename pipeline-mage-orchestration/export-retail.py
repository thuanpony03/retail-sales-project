import pyarrow as pa
import pyarrow.parquet as pq
import os

if 'data_exporter' not in globals():
    from mage_ai.data_preparation.decorators import data_exporter

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = "/home/src/my-creds.json"
project_id = "retail-sales-437510"
bucket_name = "retail_sales_bucket"
table_name = "retail_data"
object_key = "retail_data.parquet"
root_path = f'{bucket_name}/{table_name}'



@data_exporter
def export_data(data, *args, **kwargs):
    """
    Export data to a Delta Table

    Docs: https://delta-io.github.io/delta-rs/python/usage.html#writing-delta-tables
    """
    table = pa.Table.from_pandas(data)
    gcs = pa.fs.GcsFileSystem()

    pq.write_to_dataset(
        table,
        root_path = root_path,
        filesystem = gcs
    )
