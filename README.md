# vessel

# Overview

The rising emissions of greenhouse gasses has driven earth to an uncofortable state of climate change. Our new app **vessel** aims to use the power of composting to reduce greeenhouse gasses and put carbon back into the ground. About one forth of American waste is organic material that can be composted yet only eight percent of people use compost. Compost is the key to sustainable agriculture due to its properties with water retention, waste reduction, and soil health.

Many lack the resources to compost their scraps, setting up a personal pile takes time and effort and few cities have municipal compost collection. With the vessel app, users will be able to effortlessly make money from desposing their scraps responsibly. 

The landing page gives users the ability to drop their compost at one of vessel's drop-off locations. Each of the company's drop-off locations will consist of a recycled shipping container split into three different compartments for different stages in the composting process. When the user deposits their waste, an automated system will weight the scraps and then add it to the compost pile. The vessel will then scan an in-app QR code so the user can be reimbured with points.

The points given to users can either be withdrawn for money or used to buy vessel brand compost or gear such as a compost bin to aid transportation, etc. This money comes from the revenue of the finished compost. With organic compost selling at nearly ten cents per pound, the vessel compost can will make enough money to incentivise each user to turn their trash into treasure.

## What is a vessel?
A vessel is a drop off point for compost. A vessel is a modified old shipping container. This will save the container from landfill, while also offering a cheap and solid recepticle for the compost.

The vessel will then be modified by splitting it into two boxes on the inside (by putting a metal wall halfway through the container) such that there can be two seperate compost piles at the same time. By allowing 2 different states of compost, one can be closed at all times allowing it to go through the necessary waiting period for the pile to properly compost. Once its done composting, the compost will be taken from the vessel, that box will be opened and the other box will close to allow it to compost.

Each vessel will also need to have some smart technology. It will need to weigh the compost to give proper rewards, be able to scan QR codes to give rewards (or generate non-fungible informational QR codes with weight of compost, location, etc). Additionally, we hope that it can read temperature information which aids in observing the compost state.

# The App

The goal of the app is to give our users the ability to find nearby dropoff locations and to manage their in-app points. With our Google Maps integration, users will be able to see on a map the nearby vessels along with the points per pound of compost that they would receive. Users will be able to collect in app points for their deposits and redeem the points for cash, or vessel-branded items, such as recepticles to help transport compost to the vessel, at home composters, etc.

We designed our web app/backend using flask. It uses a sqlite database. The main tables in the database are:

  - User
    + id
    + username
    + password
    + points
  - Location
    + id
    + latitude
    + longitude
  - vessel
    + id
    + manager (foreign key)
    + box1
    + box2
  - Box
    + id
    + temperature
    + weight
    + status (closed or not)
    + closed_on (date that it was close)
  - Dropoff
    + id
    + dropoff_time
    + weight
    + User (foreign key)
    + Box (foreign key)
    + points rewarded

This allows the database to model most of the functionality, while also allowing more features to be added easily. 

<p float="left">
  <img src= "https://user-images.githubusercontent.com/77899192/151709980-4d9e0ee8-8971-4756-8858-af780dc13a25.png" width="200" />
  <img src="https://user-images.githubusercontent.com/77899192/151710071-0b7eea4b-643b-429a-9b93-3acef97f96b5.png" width="200" /> 
  <img src="/img3.png" width="100" />
</p>


<img width="373" alt="Screen Shot 2022-01-30 at 12 20 42 PM" src="https://user-images.githubusercontent.com/77899192/151710071-0b7eea4b-643b-429a-9b93-3acef97f96b5.png">

<img width="373" alt="Screen Shot 2022-01-30 at 12 18 31 PM" src="https://user-images.githubusercontent.com/77899192/151710075-0f41ec86-a35f-457f-b32f-81012e9612a1.png">

<img width="375" alt="Screen Shot 2022-01-30 at 12 18 57 PM" src="https://user-images.githubusercontent.com/77899192/151710077-f0503d71-a5fe-47b7-be69-5867d91a39ef.png">




##### What needs to be added? 
We still need to model the QR code, and the smart tech that will go in the vessel.

# Business Model

Vessel will use initial capital to aquire recylcled shipping containers for each compost hotspot. Modifications to the vessels will consist of fencing to section the container into halves as well as a deposit door equipped with a scale to messure the weight of the compost as well as a scanner to give the user points. Each hotspot will have a contracted manager that will tend to the compost piles and handle the sale of humus. The manager would likely be able to oversee many containers in the area, and would need to check on them approximately once a week.

Compost would be sold to local farmers, gardeners, or anyone with a need for organic compost. Plenty of compost would also be available for donation to schools and community gardens to promote the practice of sustainable agriculture.

# How to run
The backend/web app is far from finished, but the basic skeleton has been created. Most has been copied from Flask's online tutorial.


First, the environment needs to be setup and activated `bash create_venv.sh && source venv/bin/activate` should do just that. 

To run the project, `flask run` opens a webserver on port `5000` and navigating to `localhost:5000` will lead to index page.

# Future work

Obviously, the app actually needs to be built in order to ship the product. This would be the largest software problem. We built the dummy web-app as sort of a proof of concept, but most people would use a mobile app instead as they need to check in at remote vessels and use mobile devices. This would require a change from an HTML API to a predominantly JSON or other data-based APIs rather than a UI-serving API.

We would also need to build, design, and prototype the vessels themselves, look for locations to put the vessels, and hire contracted managers to oversee the vessels.

We would also need to build all of the backend logic for this to work, and build the smart tech that goes inside the vessel.

# Acknowledgments

Vessel was made by Reid Arwood, Andrew Boden, JR Byers, and Ben Hayes. 

Thank you to Hack@Brown and their sponsors.
