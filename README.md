# Final Project Full Stack "Platform Broker Inmobiliario"
https://fullstackbroker.herokuapp.com/

nicole@email.com role broker all permission
carlos@email.com role asistant some permission

https://trello.com/b/U0d54tC4/organizando-el-proyecto

EN ELABORACIÓN.....

rails 5.2.5, ruby 2.7.4 new (name) -d=postgresql

gem bootstrap and their installation.

gem devise, and devise install, controller and views.

gem activeamine for roles and admin.

gem ransack for search status in_process or finished of the properties.

gem sendgrip install for notify email when create new user. For example the client needs other users for some works in the platform.

gem acts as votable, for put a like o dislike to tasks.

gem omniauth for login with facebook.

gem sentry-rails

The Client will be able to see a dashboard with all information entered...
The client needs to see all properties informations and the owners with details of sale and rent, also the renters and buyers in the process, so he needs login for create, edit, delete, update and only him can be able to do it. The other user (asistant) just can see the first page inicial or list of properties, but not edit or register properties.

Model through associations between owners, buyers and renters, added navbar and permission; controller and views users with devise.

Indicators www.mindicador.cl api with js. 

Form contact for users that need more information about the platfom and how to register, when the admin received that email, will be created and then the new user will have to access a payment in mercado pago.

Landing page for users that not to register and just can read about the platform.

This platform is for broker that needs always register all their process. Also, have access a diferent pages how your web, SII, Tesorería GR, Firmar en linea contratos, 
Calculo Ipc para arriendos.
