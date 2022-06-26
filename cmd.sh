symfony server:ca:install
symfony book:check-requirements
symfony new --version=5.4-1 --book guestbook
symfony book:checkout 10
symfony book:checkout 10.2
git diff step-10-1...step-10-2
git diff step-9...step-10-1
git log -- src/Controller/ConferenceController.php
symfony new guestbook --version=5.4 --php=8.1 --webapp --docker --cloud
mkdir public/images/
php -r "copy('http://clipartmag.com/images/website-under-construction-image-6.gif', 'public/images/under-construction.gif');"
symfony server:start -d
symfony open:local
php -r "copy('https://symfony.com/favicon.ico', 'public/favicon.ico');"
symfony cloud:project:create --title="Guestbook" --plan=development
symfony cloud:deploy
symfony cloud:url -1
symfony cloud:project:delete
symfony server:log
export APP_ENV=dev
symfony cloud:logs --tail
symfony cloud:ssh
symfony console list make
docker-compose up -d
docker-compose ps
docker-compose logs
symfony run psql
docker-compose exec database psql app symfony
symfony run pg_dump --data-only > dump.sql
symfony run psql < dump.sql
symfony cloud:tunnel:open
symfony var:expose-from-tunnel
symfony cloud:tunnel:close
symfony var:export
symfony console make:entity Conference
symfony console make:migration
symfony console make:entity Comment
symfony composer req "admin:^4"
symfony console make:admin:dashboard
symfony console make:admin:crud
symfony composer req "twig/intl-extra:^3"
symfony console doctrine:migrations:migrate
symfony cloud:env:sync
symfony cloud:env:debug
symfony cloud:env:debug --off
symfony console make:subscriber TwigEventSubscriber
symfony console make:form CommentFormType Comment
symfony console make:user Admin
symfony console doctrine:migrations:migrate -n
symfony console security:hash-password
symfony run psql -c "INSERT INTO admin (id, username, roles, password) \
  VALUES (nextval('admin_id_seq'), 'admin', '[\"ROLE_ADMIN\"]', \
  '\$argon2id\$v=19\$m=65536,t=4,p=1\$BQG+jovPcunctc30xG5PxQ\$TiGbx451NKdo+g9vLtfkMy4KjASKSOcnNxjij4gTX1s')"
symfony console make:auth
symfony console debug:router
symfony console secrets:set AKISMET_KEY
symfony cloud:variable:create --sensitive=1 --level=project -y --name=env:AKISMET_KEY --value=abcdef
symfony console secrets:generate-keys --env=prod
APP_RUNTIME_ENV=prod symfony console secrets:generate-keys
symfony console secrets:set AKISMET_KEY --env=prod
symfony cloud:variable:create --sensitive=1 --level=project -y --name=env:SYMFONY_DECRYPTION_SECRET --value=`php -r 'echo base64_encode(include("config/secrets/prod/prod.decrypt.private.php"));'`
rm -f config/secrets/prod/prod.decrypt.private.php
symfony composer req phpunit --dev
symfony console make:test TestCase SpamCheckerTest
symfony php bin/phpunit
symfony console secrets:set AKISMET_KEY --env=test
symfony console doctrine:database:create --env=test
symfony console doctrine:migrations:migrate -n --env=test
APP_ENV=prod symfony console doctrine:database:create
symfony php bin/phpunit tests/Controller/ConferenceControllerTest.php
symfony composer req orm-fixtures --dev
symfony console debug:autowiring encoder
symfony console doctrine:fixtures:load --env=test
symfony php bin/phpunit tests/Controller/ConferenceControllerTest.php
symfony server:stop
symfony server:start -d --env=test
make tests
symfony composer req "dama/doctrine-test-bundle:^6" --dev
symfony composer req panther --dev
symfony console make:test WebTestCase Controller\\ConferenceController
symfony console make:test PantherTestCase Controller\\ConferenceController
symfony composer req doctrine-messenger
symfony run -d --watch=config,src,templates,vendor symfony console messenger:consume async -vv
symfony console messenger:failed:show
symfony console messenger:failed:retry
symfony cloud:logs --worker=messages all
symfony composer req workflow
symfony console workflow:dump comment | dot -Tpng -o workflow.png
symfony console debug:container workflow
symfony console debug:autowiring workflow
symfony composer req "twig/cssinliner-extra:^3" "twig/inky-extra:^3"
symfony open:local:webmail
symfony cloud:env:info enable_smtp on
curl -s -I -X GET https://127.0.0.1:8000/
rm -rf var/cache/dev/http_cache/
curl -s -I -X PURGE -u admin:admin `symfony var:export SYMFONY_PROJECT_DEFAULT_ROUTE_URL`/admin/http-cache/
curl -s -I -X PURGE -u admin:admin `symfony var:export SYMFONY_PROJECT_DEFAULT_ROUTE_URL`/admin/http-cache/conference_header
symfony console make:command app:step:info
curl -X PURGE -H 'x-purge-token: PURGE_NOW' `symfony cloud:env:url --pipe --primary`
curl -X PURGE -H 'x-purge-token: PURGE_NOW' `symfony cloud:env:url --pipe --primary`conference_header
mv assets/styles/app.css assets/styles/app.scss
yarn add node-sass sass-loader --dev
yarn add bootstrap @popperjs/core bs-custom-file-input --dev
php -r "copy('https://symfony.com/uploads/assets/guestbook-5.4.zip', 'guestbook-5.4.zip');"
unzip -o guestbook-5.4.zip
rm guestbook-5.4.zip
symfony run yarn dev
symfony run -d yarn dev --watch
symfony console workflow:dump comment | dot -Tpng -o workflow.png
symfony composer req "imagine/imagine:^1.2"
symfony cloud:variable:create --sensitive=1 --level=project -y --name=env:MAILTO --value=ops@example.com
