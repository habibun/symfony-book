#!/bin/bash

# You can check the extensions currently enabled via
php -m

# install a certificate authority (CA) to enable TLS support
symfony server:ca:install

# Check that your computer has all needed requirements
symfony book:check-requirements

# Clone the guestbook repository
symfony new --version=5.4-1 --book guestbook


# read and test the code at the end of step 10
symfony book:checkout 10


# You can also check out any substep
symfony book:checkout 10.2


# Not sure that you got everything right in substep 10.2? Get the diff:
git diff step-10-1...step-10-2

# And for the very first substep of a step:
git diff step-9...step-10-1


# Want to know when a file has been created or modified?
git log -- src/Controller/ConferenceController.php


# Create a new Symfony project with the symfony CLI
symfony new guestbook --version=5.4 --php=8.1 --webapp --docker --cloud


# Download my GIF image
php -r "copy('http://clipartmag.com/images/website-under-construction-image-6.gif', 'public/images/under-construction.gif');"


# start the web server in the background (The server started on the first available port, starting with 8000)
symfony server:start -d


# open the website in a browser from the CLI
symfony open:local


# Symfony has a convenient command to tail all the logs
symfony server:log


# APP_ENV can be set by using "real" environment variables in your terminal:
export APP_ENV=dev


# The Symfony Console built-in list command lists all commands available under a given namespace
symfony console list make


# Create your first Controller via the make:controller command:
symfony console make:controller ConferenceController


# Revert the changes we have just made:
git checkout src/Controller/ConferenceController.php


# Start Docker Compose in the background (-d):
docker-compose up -d


# check the Docker Compose logs:
docker-compose logs


# Thanks to these conventions, accessing the database via symfony run is much easier:
symfony run psql

# If you don't have the psql binary on your local host, you can also run it via docker-compose:
docker-compose exec database psql main main


# Use pg_dump to dump the database data:
symfony run pg_dump --data-only > dump.sql

# And restore the data:
symfony run psql < dump.sql


# Check all environment variables exposed by symfony by executing symfony var:export:
symfony var:export


# It is now time to generate the Conference entity:
symfony console make:entity Conference


# Let's see what Doctrine generates:
symfony console make:migration


# You can now run the generated migration to update the local database schema:
symfony console doctrine:migrations:migrate


# Let's add EasyAdmin as a project dependency
symfony composer req "admin:^4"


# generate a "web admin dashboard"
symfony console make:admin:dashboard

# Let's generate a CRUD for conferences:
symfony console make:admin:crud


# creation of a Git branch:
git checkout -b sessions-in-db


# generate a subscriber
symfony console make:subscriber TwigEventSubscriber

# generate form
symfony console make:form CommentFormType Comment



# create user
symfony console make:user Admin


# generate the password hash
generate the password hash


# insert new user
symfony run psql -c "INSERT INTO admin (id, username, roles, password) \
  VALUES (nextval('admin_id_seq'), 'admin', '[\"ROLE_ADMIN\"]', \
  '\$argon2id\$v=19\$m=65536,t=4,p=1\$BQG+jovPcunctc30xG5PxQ\$TiGbx451NKdo+g9vLtfkMy4KjASKSOcnNxjij4gTX1s')"


# create an authenticator:
