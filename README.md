# Vagrant Heroku cedar-14 box for python/Django

*In progress. See [issues](https://github.com/philgyford/vagrant-heroku-cedar-14-python/issues).*

A Vagrant box for python/Django development, mimicking a Heroku cedar-14 dyno.

* Ubuntu 14.04 (ubuntu/trusty64)
* PostgreSQL 9.4
* python 2.7.6
* pip, virtualenv, virtualenvwrapper
* Requirements for the python image processing module Pillow
* foreman

If a `requirements.txt` file is found, modules in it will be installed into the virtualenv.

When you log in the virtualenv will automatically be activated.

If a `Procfile` is found, foreman will be started. (No, it won't at the moment.)


## Running it

1. Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/).

2. In your project, make a `config/` directory, if it doesn't already have one.

3. Make a copy of `config/vagrant.template.yml` and put it at `config/vagrant.yml` in *your* project.

4. If you have a `Procfile`, and therefore want foreman to run, you *must* change the Django `settings_module` in `config/vagrant.yml` to whatever you want the `DJANGO_SETTINGS_MODULE` environment variable in the virtual machine to be. Feel free to change any of the other config options if appropriate.

5. Either copy, move or symlink `Vagrantfile` and the `config/vagrant/` directory into your Django project. So it will be something like:

		config/
			vagrant/		# a copy or symlink
			vagrant.yml
		myproject/
			manage.py
			my_app/
				...
			...
		Procfile
		requirements.txt
		Vagrantfile			# a copy or symlink

	This will vary slightly depending on your Django project's layout.

6. Run `vagrant up` from the same directory that the copy/symlink of `Vagrantfile` is in.

7. Go to http://localhost:5000/ in your browser.

You will probably want to do `vagrant ssh` and populate the database. This could be smoother...

If you change or update any of the Vagrant stuff, then do `vagrant provision` to have it run through and update the box with changes.


#### Useful / Inspired by:

* https://github.com/kiere/vagrant-heroku-cedar-14/
* https://github.com/ejholmes/vagrant-heroku/
* https://github.com/torchbox/vagrant-django-base/
* https://github.com/torchbox/vagrant-django-template
* https://github.com/jackdb/pg-app-dev-vm/
* https://github.com/maigfrga/django-vagrant-chef/
* https://devcenter.heroku.com/articles/cedar-ubuntu-packages

