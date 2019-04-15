#!/bin/bash

#turtle
#dans notebook ??
pip install ipyturtle
jupyter nbextension enable --py --sys-prefix ipyturtle

git clone https://github.com/gkvoelkl/ipython-turtle-widget.git
cd ipython-turtle-widget
pip install -e .
jupyter nbextension install --py --symlink --sys-prefix ipyturtle
jupyter nbextension enable --py --sys-prefix ipyturtle

