import boto3 
import botocore
import config

key='bengals.csv'
access_key ID: 'AKIAZZ33YB65GZIN656A'
secret_access_key= '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'
bucket_name = 'mindex-data-analytics-code-challenge’


s3 = boto3.resource('s3',
        aws_access_key = access_key_id, 
        aws_secret_access_key=secret_access_key
    )

try:
    s3.Bucket(bucket_name).download_file(key,key)
except botocore.exceptions.ClientError as e:
    if e.response['Error']['Code'] == '404':
        print('object does not exist')
    else:
        raise