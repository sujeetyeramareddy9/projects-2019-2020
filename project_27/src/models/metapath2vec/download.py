import os
import torch as th
import torch.nn as nn
import tqdm


class PBar(object):
    def __enter__(self):
        self.t = None
        return self

    def __call__(self, blockno, readsize, totalsize):
        if self.t is None:
            self.t = tqdm.tqdm(total=totalsize)
        self.t.update(readsize)

    def __exit__(self, exc_type, exc_value, traceback):
        self.t.close()


class AminerDataset(object):
    """
    Download Aminer Dataset from Amazon S3 bucket. 
    """
    def __init__(self, path):


        if not os.path.exists(path):
            print('invalid downloading path: '+ str(path))
        self.fn = path

    def _download_and_extract(self, path, filename):
        import shutil, zipfile, zlib
        from tqdm import tqdm
        import urllib.request

        fn = os.path.join(path, filename)
        with PBar() as pb:
            urllib.request.urlretrieve(self.url, fn, pb)
        print('Download finished. Unzipping the file...')

        with zipfile.ZipFile(fn) as zf:
            zf.extractall(path)
        print('Unzip finished.')
