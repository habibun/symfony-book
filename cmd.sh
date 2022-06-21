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