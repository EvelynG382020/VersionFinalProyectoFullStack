# Final Project Full Stack "Platform Broker Inmobiliario"
rails (version) new (name) -d=postgresql
gem devise, and devise install, controller and views.
gem activeamine for roles and admin.
gem ransack for search status in_process or finished of the properties.
gem sendgrip install for notify email when create new user. For example the client needs other users for some works in the platform.
gem acts as votable, for put a like o dislike to tasks.
The Client will be able to see a dashboard with all information entered...
Continuation of the project...
The client needs to see all properties informations and the owners with details of sale and rent, the renters and buyers in the process, also, he needs

login for create, edit, delete, update and only him can be able to do it. The other user just can see the first page inicial or list of properties, but not edit or register properties.

Added to model through associations between owners, buyers and renters, added navbar and permission; controller and views users with devise, added indicators www.mindicador.cl api with js. Added if sign_in? some resources for users that can not edit, add, and destroy, justo can show more informations.

All kind of role see a different permission y access.

