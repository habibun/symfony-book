## About The Project
[Symfony][symfony_website] Book Source Code

Please check the [projects](#projects) section for more details.

## Overview
| Branch      | Symfony Version | PHP Version |
|-------------|-----------------|-------------|
| [v5][v5_tt] | `^5.4`          | `^8.1`      |


## Projects
<details><summary>Symfony 5</summary>  
  

<img
src="url"
alt="Symfony: The Fast Track v5"
width="50%"
/>

**Code:** https://github.com/habibun/symfony-book/tree/v5  
**Resources:**
- [Symfony: The Fast Track v5](https://symfony.com/doc/5.4/the-fast-track/en/index.html)

##### Prerequisites: [Symfony CLI][symfony_cli], [PHP][php], [Composer][composer], [Git][git], [PostgreSQL][postgre_sql], [Docker][docker], [Docker Compose][docker_compose]

#### Installation

```bash 
# Clone the repository using the command
git clone git@github.com:habibun/symfony-book.git

# Navigate into the cloned directory
cd symfony-book

# Checkout to project branch
git checkout v

# Create .env.local file
make init
```

Configure the database connection in the .env.local file

```bash 
# Install project
make install

# Start the local development server
make start
```

Please check more rules in [Makefile][v5_makefile].

##
</details>



## Learn More
- [Symfony: The Fast Track](https://symfony.com/book)  


## Related
- [Symfony](https://github.com/habibun/symfony)


## License
Distributed under the MIT License. See **[LICENSE][license]** for more information.



[//]: # (Links)
[license]: https://github.com/habibun/symfony-book/blob/main/LICENSE
[symfony_website]: https://symfony.com/

[v5]: https://github.com/habibun/symfony-book/tree/v2
[v5_tt]: https://github.com/habibun/symfony-book/tree/v5 "Book for Symfony 5"
[v5_makefile]: https://github.com/habibun/symfony-book/blob/v5/Makefile

[//]: # (Prerequisites)
[symfony_cli]: https://symfony.com/download
[php]: https://www.php.net/
[composer]: https://getcomposer.org/
[git]: https://git-scm.com/
[mysql]: https://www.mysql.com/
[postgre_sql]: https://www.postgresql.org/
[node]: https://nodejs.org/
[docker]: https://www.docker.com/
[docker_compose]: https://docs.docker.com/compose/
