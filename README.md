XSS Vulnerability Example Apps
==============================

This is the Sinatra app for a set of example applications vulnerable to XSS.

Related Apps
------------
* Admin - https://github.com/pcorliss/vuln_admin
* Sinatra - https://github.com/pcorliss/sinatra_step_1
* Rails - https://github.com/pcorliss/rails_step_3
* Node - https://github.com/pcorliss/node_step_2

Live Demo
---------
You can visit a live demo at http://vuln.alttab.org

Local Development
=================

```
git clone https://github.com/pcorliss/sinatra_step_1.git
cd sinatra_step_1
bundle install
createuser -d sinatra1
rake db:create
rake db:migrate
rake db:seed
shotgun
```

Heroku Deployment
=================

```
heroku create
heroku addons:add memcachier:dev
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku ps:scale web=1
```
