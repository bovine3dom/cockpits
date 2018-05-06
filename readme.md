# A cockpit script for Multi Theft Auto

I wrote this a while ago. I thought it would be interesting to preserve it just in case the [original site](https://community.mtasa.com/index.php?p=resources&s=details&id=844) goes down.

```
Adds 3D cockpit / first person camera views to all of the GTA vehicles except some boats, the Rhino and SWAT tank, and the Andromeda.

== Controls ==
vehicle_look_left (default Q)
vehicle_look_right (default E)
vehicle_look_behind (you may need to set this yourself under the MTA:SA settings, I use 'c')
change_camera (default V)

== Commands ==
playervisibleincar [1 or 0] - sets whether you can see the player model when you are in the cockpit. Default setting: 1

useroll [1 or 0] - sets whether the camera rolls with the car. Default setting: 1

aircraftcompat [1 or 0] - 1 binds look (left/right/behind/up) to the special_control_(left/right/down/up) controls, so you can look around without using the rudder in aircraft. Default setting: 0.

== Known Issues ==
- All of the GTA:SA glass bugs apply. If you look through a glass screen in the cockpit, some objects cannot be seen (this includes the water). The glass disappears if you turn your lights on, however.
- If your car (or plane etc.) rolls more than 90* either way, the camera will flip around and do funny stuff.
- If you look left/right in a plane/helicopter, your rudder also moves >> to solve this, do use the 'aircraftcompat' command <<

== Planned updates ==
- The ability to mouselook (when I've got some time... maybe in the summer.)

== Tips ==
Some cars - e.g. hustler, hermes - are really hard to see out of. I can't do anything about that, and I think it makes the game more fun and more realistic - but you can always turn off the cockpit before you get into the car if it's a real problem. Tail-dragging planes (e.g. nevada, rustler) are also hard to see out of to taxi - but once you speed up, the tail will lift off the ground. In cars with rear engines, you won't be able to see when the car is about to explode - but you should still be able to hear it.

== Help (me) ==
If you find any bugs, or would like the cockpit in your favourite car to be moved around a bit (setting 185 cockpits manually, I'm bound to get one or two a bit wrong :) ) feel free to contact me on IRC or PM me on the forums.

By the way, feel free to tear apart this script as much as you like (you can even take the vehicle offsets and make it into a better cockpit script). Some credit would be nice, but it's not compulsory if it's only a tiny little bit of your script.

== Thankies ==
To everyone on the IRC channel / forum who helped me <3
```
