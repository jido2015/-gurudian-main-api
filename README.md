<<<<<<< HEAD
# README
||||||| parent of 678908b... Set a basic README on how to get started with the codebase
<<<<<<< HEAD
# README
=======
# Gurudian Main API
>>>>>>> 678908b... Set a basic README on how to get started with the codebase

Well, Gurudian.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

1. Have knowledge on Ruby on Rails
2. Have [PostgreSQl](https://www.postgresql.org/) installed on your system
3. Have [Postman](https://www.getpostman.com/) installed on your system

### Installing

1. Ensure that your terminal is in the root of this project
2. Run `. ./setup.sh` in your terminal
3. Setup Postman (See section below)
To access the admin panel at `/admin/`, you would need to set `admin` role to your user. See below for `Roles Setup`

### Postman Setup

1. Open Postman application
2. On the top left of the Postman app, click on `import`
3. At `./dev-files`, import `Gurudian.development.postman_environment.json` <= This will import the development environment for you
4. At `./dev-files`, import `Gurudian.postman_collection.json`. This will import the entire current collection of Postman API call test


#### Roles Setup

1. Open your terminal
2. Key in `rails c` to open rails console
3. Find your user:
    
        a. By email: `user=User.find_by(:email =>"<email here>")`
        b. By id: user=User.find(<user id>)
       
4. Then `user.add_role :admin`
5. Done
## Running the tests

<<<<<<< HEAD
* ...
||||||| parent of 678908b... Set a basic README on how to get started with the codebase
* ...
||||||| merged common ancestors
=======
# -gurudian-main-api
>>>>>>> origin/master
=======
No test is setup for this project yet

### Break down into end to end tests

No test is setup for this project yet

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **John**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration
* etc

## Notes
>>>>>>> 678908b... Set a basic README on how to get started with the codebase
