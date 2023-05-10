# Docker file for the sphinx dev environment

# Sphinx has their own dev image, which ships with everything
# we need; just install stuff we need on top of that
FROM sphinxdoc/sphinx

# Installs python packages that we need
RUN pip3 install furo sphinx-design myst-parser

# Installs any apt packages we need and cleans up
# cache afterwards
# RUN apt-get update && apt-get install -y \
#     watch \
#     && apt purge

# Runs our make script, building site HTML
CMD cd /app/site; while sleep 2; do make html; done

#watch -n 2 make html 