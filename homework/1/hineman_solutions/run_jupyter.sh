#!/bin/bash
docker run -i -t -p 8888:8888 spinup-hineman /bin/bash -c "mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser"
