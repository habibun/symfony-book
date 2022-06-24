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
