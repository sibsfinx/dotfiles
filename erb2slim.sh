#!/bin/bash
find . -name '*.erb' | xargs -I file sh -c \
'html2haml --erb file | haml2slim > $(echo file | sed 's/erb/slim/') && \
rm file'
