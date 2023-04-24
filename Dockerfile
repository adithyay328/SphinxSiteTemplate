# Docker file for the sphinx dev environment

# Sphinx has their own dev image, which ships with everything
# we need; just install stuff we need on top of that
FROM sphinxdoc/sphinx

# Installs python packages that we need
RUN pip3 install furo sphinx-design

# Runs our make script
CMD cd /app; make html; echo "I Ran" >> hello.txt