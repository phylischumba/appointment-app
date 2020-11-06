# Appointments API

> This is the final [Microverse's](www.microverse.org) capstone project!!
The purpose of the project is to create a Full-Stack app that works with a backend in Rails and a Frontend in React.
This repo contains the backend project.
It's a Rails API that is able to receive connections to:

- Create and authenticate users
- Get a list of available doctors
- Make an appointment with a doctor
- Show the list of the user's appointments

## Built With

- Ruby on Rails

## Live Demo

You can find the complete and functional app here:
[Live Demo Link](https://wicked-goosebumps-55914.herokuapp.com/)

## Setup

- To get a local copy up and running follow these simple example steps.
  - Clone the [repo](https://github.com/Phylis05/appointment-app) and cd in it.
  - Run `bundle install` to get all gems installed on your directory
  - Run `rails db:create` and then `rails db:migrate` to set the Database
  - Run `rails s` to open the server
  - You can go to the frontend repo [here](https://github.com/Phylis05/appointment-app-front-end) and follow instructions there. Or you can connect your own frontend (by requesting access first)

## Usage

### Login

- Post: `https://wicked-goosebumps-55914.herokuapp.com/auth/login`
- Parameters:
 `{ email: string,
   password: string,
  }`

### SignUp

- Post: `https://wicked-goosebumps-55914.herokuapp.com/signup`
- Parameters:
 `{name: string,
    email: string,
    password: string
  }`

### Doctors

- Get: `https://wicked-goosebumps-55914.herokuapp.com/v1/doctors`
- Headers:
 `{ Authorization: 'Bearer ${token}'`

### Doctor

- Get: `https://wicked-goosebumps-55914.herokuapp.com/v1/doctors/${id}`
- Headers:
 `{ Authorization: 'Bearer ${token}'`

### Appointment

- Post: `https://wicked-goosebumps-55914.herokuapp.com/appointment/new`
- Parameters:
`{
  location: string,
  date: date,
  doctor_id: integer,
  }`
- Headers:
 `{ Authorization: 'Bearer ${token}'`

### Appointments

- Get: `https://wicked-goosebumps-55914.herokuapp.com/v1/appointments`
- Headers:
 `{ Authorization: 'Bearer ${token}'`

## Testing

- To check tests you need to comment line 7 and uncomment line 8 of app/lib/json_web_token.rb
  This should also be done if you want to test the app in dev env, otherwise, it won't work.
- Run `rspec` in your terminal (check that you are in the repo's folder) to run all the testing suite.

## Author

👤 **Phylis Chepchumba**

- Github: [Phylis05](https://github.com/Phylis05)
- Linkedin: [Phylis Chepchumba](https://linkedin.com/phylis-chepchumba)
- Twitter: [phylis_chumbaa](https://twitter.com/phyl_chumba)
- [Email](chumba.phyl@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/Phylis05/appointment-app/issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- This project is part of the React Microverse Curriculum

## 📝 License

This project is [MIT](lic.url) licensed.
