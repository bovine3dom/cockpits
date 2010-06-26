visiblecock = 1
cockpit = 1
rollEnabler = 1
aircraftCompat = 0
ax = nil

function cam()
		local theVehicle = getPedOccupiedVehicle(getLocalPlayer())
		if theVehicle then
			if cockModel == getElementModel(theVehicle) then
				if rollEnabler then
					local ax, ay, az = getElementPosition(gnat)
					local bx, by, bz = getElementPosition(bee)
					local z = az-bz
					roll = -math.deg(math.asin(z))
				end
				local x, y, z = getElementPosition(gnat)
				local cx, cy, cz = getElementPosition(fly)
				setCameraMatrix(x, y, z, cx, cy, cz, roll)
				cockVehicle = theVehicle
				cockModel = getElementModel(theVehicle)
			else
				camStop(theVehicle, 0)
				camStart(theVehicle, 0)
			end
		elseif charles then
			camStop(cockVehicle, 0)
		end
	end

function camStart(theVehicle, seat)
		if (cockpit == 1) then
			if (seat == 0) then
				local x, y, z = getElementPosition(getLocalPlayer())
				fly = createObject(3803, x, y, z)
				setElementAlpha(fly, 0)
				gnat = createObject(3803, x, y, z)
				setElementAlpha(gnat, 0)
				bee = createObject(3803, x, y, z)
				setElementAlpha(bee, 0)
				local vModel = getElementModel(theVehicle)
				if (vModel == 426 or vModel ==  596 or vModel == 597 or vModel == 420) then -- Premier based cars
					ax, ay, az = -0.55, 1, 0.5
					bx, by, bz = -0.55, -0.2, 0.55
				elseif (vModel == 598) then -- LVPD
					ax, ay, az =  -0.55, 1, 0.6
					bx, by, bz =  -0.55, -0.2, 0.65
				elseif (vModel == 490) then -- FBI Rancher
					ax, ay, az =  -0.55, 3, 0.7
					bx, by, bz =  -0.55, 0.2, 0.75
				elseif (vModel == 427) then -- SWAT Truck
					ax, ay, az =  -0.5, 3, 0.9
					bx, by, bz =  -0.5, 0.8, 0.95
				elseif (vModel == 599 or vModel == 489 or vModel == 505) then -- Rancher based cars
					ax, ay, az =  -0.55, 1, 0.7
					bx, by, bz =  -0.55, -0.4, 0.75
				elseif (vModel == 602) then -- Alpha
					ax, ay, az =  -0.55, 1, 0.3
					bx, by, bz =  -0.55, -0.4, 0.37
				elseif (vModel == 496) then -- Blista Compact
					ax, ay, az =  -0.48, 1, 0.4
					bx, by, bz =  -0.48, -0.5, 0.45
				elseif (vModel == 401) then -- Bravura
					ax, ay, az =  -0.55, 1, 0.4
					bx, by, bz =  -0.55, -0.3, 0.45
				elseif (vModel == 518) then -- Buccaneer
					ax, ay, az =  -0.6, 1, 0.35
					bx, by, bz =  -0.6, -0.2, 0.4
				elseif (vModel == 527) then -- Cadrona
					ax, ay, az =  -0.45, 1, 0.45
					bx, by, bz =  -0.45, -0.3, 0.5
				elseif (vModel == 589) then -- Club
					ax, ay, az =  -0.5, 1, 0.65
					bx, by, bz =  -0.5, -0.3, 0.7
				elseif (vModel == 419) then -- Esperanto
					ax, ay, az =  -0.5, 1, 0.3
					bx, by, bz =  -0.5, -0.4, 0.35
				elseif (vModel == 533) then -- Feltzer
					ax, ay, az =  -0.5, 1, 0.4
					bx, by, bz =  -0.5, -0.4, 0.45
				elseif (vModel == 526) then -- Fortune
					ax, ay, az =  -0.5, 1, 0.3
					bx, by, bz =  -0.5, -0.3, 0.35
				elseif (vModel == 474) then -- Hermes
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.5, 0.48
				elseif (vModel == 545) then -- Hustler
					ax, ay, az =  -0.4, 1, 0.4
					bx, by, bz =  -0.4, -0.4, 0.45
				elseif (vModel == 517) then -- Majestic
					ax, ay, az =  -0.45, 1, 0.45
					bx, by, bz =  -0.45, -0.3, 0.5
				elseif (vModel == 410) then -- Manana
					ax, ay, az =  -0.45, 1, 0.45
					bx, by, bz =  -0.45, -0.3, 0.5
				elseif (vModel == 600) then -- Picador
					ax, ay, az =  -0.55, 1, 0.42
					bx, by, bz =  -0.55, -0.1, 0.47
				elseif (vModel == 436) then -- Previon
					ax, ay, az =  -0.45, 1, 0.47
					bx, by, bz =  -0.45, -0.35, 0.52
				elseif (vModel == 580) then -- Stafford
					ax, ay, az =  -0.55, 1, 0.65
					bx, by, bz =  -0.55, -0.2, 0.75
				elseif (vModel == 439) then -- Stallion
					ax, ay, az =  -0.5, 1, 0.35
					bx, by, bz =  -0.5, -0.7, 0.4
				elseif (vModel == 549) then -- Tampa
					ax, ay, az =  -0.45, 1, 0.4
					bx, by, bz =  -0.5, -0.2, 0.45
				elseif (vModel == 491) then -- Virgo
					ax, ay, az =  -0.45, 1, 0.3
					bx, by, bz =  -0.45, -0.5, 0.35
				elseif (vModel == 445) then -- Admiral
					ax, ay, az =  -0.5, 1, 0.5
					bx, by, bz =  -0.5, -0.3, 0.55
				elseif (vModel == 507) then -- Elegant
					ax, ay, az =  -0.55, 1, 0.45
					bx, by, bz =  -0.55, -0.3, 0.5
				elseif (vModel == 585) then -- Emperor
					ax, ay, az =  -0.5, 1, 0.6
					bx, by, bz =  -0.5, -0.3, 0.65
				elseif (vModel == 587) then -- Euros
					ax, ay, az =  -0.55, 1, 0.4
					bx, by, bz =  -0.55, -0.6, 0.45
				elseif (vModel == 604 or vModel == 466) then -- Glendale
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.2, 0.5
				elseif (vModel == 492) then -- Greenwood
					ax, ay, az =  -0.5, 1, 0.5
					bx, by, bz =  -0.5, -0.3, 0.55
				elseif (vModel == 546) then -- Intruder
					ax, ay, az =  -0.6, 1, 0.45
					bx, by, bz =  -0.6, -0.5, 0.5
				elseif (vModel == 551) then -- Merit
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.2, 0.5
				elseif (vModel == 516) then -- Nebula
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.2, 0.5
				elseif (vModel == 467) then -- Oceanic
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.2, 0.5
				elseif (vModel == 547) then -- Primo
					ax, ay, az =  -0.5, 1, 0.5
					bx, by, bz =  -0.5, -0.3, 0.55
				elseif (vModel == 405) then -- Sentinel
					ax, ay, az =  -0.4, 1, 0.35
					bx, by, bz =  -0.4, -0.3, 0.4
				elseif (vModel == 409) then -- Stretch
					ax, ay, az =  -0.5, 2, 0.4
					bx, by, bz =  -0.5, 0.7, 0.45
				elseif (vModel == 550) then -- Sunrise
					ax, ay, az =  -0.55, 1, 0.3
					bx, by, bz =  -0.55, -0.3, 0.4
				elseif (vModel == 566) then -- Tahoma
					ax, ay, az =  -0.55, 1, 0.35
					bx, by, bz =  -0.55, -0.25, 0.45
				elseif (vModel == 540) then -- Vincent
					ax, ay, az =  -0.55, 1, 0.35
					bx, by, bz =  -0.55, -0.45, 0.4
				elseif (vModel == 421) then -- Washington
					ax, ay, az =  -0.45, 1, 0.35
					bx, by, bz =  -0.45, -0.15, 0.4
				elseif (vModel == 529) then -- Willard
					ax, ay, az =  -0.55, 1, 0.5
					bx, by, bz =  -0.55, -0.4, 0.55
				-- elseif (vModel == 592) then -- Andromeda has no cockpit
					-- ax, ay, az =  0, 20, 2
					-- bx, by, bz =  0, 13, 4
				elseif (vModel == 577) then -- AT 400
					ax, ay, az =  -0.5, 30, 4
					bx, by, bz =  -0.5, 24, 4.8
				elseif (vModel == 511) then -- Beagle
					ax, ay, az =  -0.4, 4, -0.5
					bx, by, bz =  -0.4, 1.7, 0
				elseif (vModel == 548) then -- Cargobob
					ax, ay, az =  -0.68, 9, -0.5
					bx, by, bz =  -0.68, 4.3, -0.1
				elseif (vModel == 512) then -- Cropduster
					ax, ay, az =  0, 1, 0.5
					bx, by, bz =  0, -0.4, 0.5
				elseif (vModel == 593) then -- Dodo
					ax, ay, az =  -0.35, 1, 0.5
					bx, by, bz =  -0.35, -0.2, 0.7
				elseif (vModel == 425) then -- Hunter
					ax, ay, az =  0, 5, 0.7
					bx, by, bz =  0, 2.3, 0.7
				elseif (vModel == 520) then -- Hydra
					ax, ay, az =  0, 5, 0.6
					bx, by, bz =  0, 2.7, 0.65
				elseif (vModel == 417) then -- Leviathan
					ax, ay, az =  -0.5, 9, 1.2
					bx, by, bz =  -0.5, 3, 1.2
				elseif (vModel == 487 or vModel == 497) then -- Maverick based vehicles
					ax, ay, az =  -0.5, 5, 0.5
					bx, by, bz =  -0.5, 1.3, 0.5
				elseif (vModel == 553) then -- Nevada
					ax, ay, az =  -0.45, 20, 1
					bx, by, bz =  -0.45, 9.3, 0.5
				elseif (vModel == 488) then -- News chopper
					ax, ay, az =  -0.5, 5, 0.5
					bx, by, bz =  -0.5, 0.5, 0.5
				elseif (vModel == 563) then -- Raindance
					ax, ay, az =  -0.5, 9, 0.3
					bx, by, bz =  -0.5, 2.3, 0.3
				elseif (vModel == 476) then -- Rustler
					ax, ay, az =  0, 1, 0.4
					bx, by, bz =  0, -0.6, 0.4
				elseif (vModel == 469 or vModel ==  447) then -- Sparrow based vehicles
					ax, ay, az =  -0.4, 5, 0.5
					bx, by, bz =  -0.4, 0.7, 0.5
				elseif (vModel == 519) then -- Shamal
					ax, ay, az =  -0.4, 10, 0
					bx, by, bz =  -0.4, 5, 0.5
				elseif (vModel == 460) then -- Skimmer
					ax, ay, az =  -0.35, 1, 0.5
					bx, by, bz =  -0.35, 0, 0.7
				elseif (vModel == 513) then -- Stunt Plane
					ax, ay, az =  0, 1, 0.2
					bx, by, bz =  0, -1.3, 0.2
				elseif (vModel == 581 or vModel == 521 or vModel == 461 or vModel == 522) then -- BF 400, PCJ 600, FCR 900, NRG 500
					ax, ay, az =  0, 1, 0.8
					bx, by, bz =  0, -0.1, 0.8
				elseif (vModel == 509) then -- Bike
					ax, ay, az =  0, 1, 0.7
					bx, by, bz =  0, -0.3, 0.7
				elseif (vModel == 481) then -- BMX
					ax, ay, az =  0, 1, 0.7
					bx, by, bz =  0, -0.2, 0.7
				elseif (vModel == 462 or vModel == 448) then -- Faggio based vehicles
					ax, ay, az =  0, 1, 0.9
					bx, by, bz =  0, -0.1, 0.9
				elseif (vModel == 463) then -- Freeway
					ax, ay, az =  0, 1, 0.8
					bx, by, bz =  0, -0.6, 0.8
				elseif (vModel == 510) then -- Mountain Bike
					ax, ay, az =  0, 1, 0.7
					bx, by, bz =  0, -0.1, 0.7
				elseif (vModel == 468) then -- Sanchez
					ax, ay, az =  0, 1, 0.7
					bx, by, bz =  0, -0.1, 0.7
				elseif (vModel == 586) then -- Wayfarer
					ax, ay, az =  0, 1, 1
					bx, by, bz =  0, -0.4, 1
				elseif (vModel == 472) then -- Coastguard
					ax, ay, az =  -0.2, 1, 1.4
					bx, by, bz =  -0.2, -0.1, 1.5
				elseif (vModel == 473) then -- Dinghy
					ax, ay, az =  0, 2, 1.3
					bx, by, bz =  0, 0.6, 1.3
				elseif (vModel == 493) then -- Jetmax
					ax, ay, az =  -0.7, 2, 1.7
					bx, by, bz =  -0.7, 0.3, 1.7
				-- elseif (vModel == 453) then -- Reefer; can't see water due to glass bug
					-- ax, ay, az =  0.4, 10, 1.9
					-- bx, by, bz =  0.4, 1.6, 1.9
				elseif (vModel == 595) then -- Launch
					ax, ay, az =  0.5, 10, 0.7
					bx, by, bz =  0.5, 0.5, 0.7
				elseif (vModel == 484) then -- Marquis
					ax, ay, az =  0, 10, 2.2
					bx, by, bz =  0, -5, 2.2
				-- elseif (vModel == 430) then -- Predator; can't see water due to glass bug
					-- ax, ay, az =  0.5, 10, 1.4
					-- bx, by, bz =  0.5, 0.7, 1.5
				-- elseif (vModel == 452) then -- Speeder; can't see water due to glass bug
					-- ax, ay, az =  0.6, 10, 1.4
					-- bx, by, bz =  0.6, 2.7, 1.4
				-- elseif (vModel == 446) then -- Squalo; can't see water due to glass bug
					-- ax, ay, az =  0.6, 10, 2
					-- bx, by, bz =  0.6, 0, 2
				-- elseif (vModel == 454) then -- Tropic; can't see water due to glass bug
					-- ax, ay, az =  -0.6, 10, 4
					-- bx, by, bz =  -0.6, 2.5, 4
				elseif (vModel == 485) then -- Baggage
					ax, ay, az =  -0.1, 1, 1
					bx, by, bz =  -0.1, -0.6, 1
				elseif (vModel == 431) then -- Bus
					ax, ay, az =  -0.75, 10, 1.2
					bx, by, bz =  -0.75, 4.5, 1.2
				elseif (vModel == 438) then -- Cabbie
					ax, ay, az =  -0.5, 1, 0.35
					bx, by, bz =  -0.5, 0.1, 0.4
				-- elseif (vModel == 437) then -- Coach; doesn't have a cockpit
					-- ax, ay, az =  -0.75, 10, 1.2
					-- bx, by, bz =  -0.75, 4, 1.2
				elseif (vModel == 574) then -- Sweeper
					ax, ay, az =  -0.25, 10, 0.8
					bx, by, bz =  -0.25, 0.2, 0.8
				elseif (vModel == 525) then -- Towtruck
					ax, ay, az =  -0.52, 10, 0.85
					bx, by, bz =  -0.52, -0.1, 0.9
				elseif (vModel == 408) then -- Trashmaster
					ax, ay, az =  -0.45, 10, 0.55
					bx, by, bz =  -0.45, 2.4, 0.6
				elseif (vModel == 552) then -- Utility Van
					ax, ay, az =  -0.6, 2, 0.85
					bx, by, bz =  -0.6, 0.3, 0.9
				elseif (vModel == 416) then -- Ambulance
					ax, ay, az =  -0.45, 2, 0.7
					bx, by, bz =  -0.45, 0.6, 0.75
				elseif (vModel == 433) then -- Barracks
					ax, ay, az =  -0.5, 5, 1.2
					bx, by, bz =  -0.5, 0.9, 1.25
				elseif (vModel == 528) then -- FBI Truck
					ax, ay, az =  -0.55, 1, 0.55
					bx, by, bz =  -0.55, -0.4, 0.6
				elseif (vModel == 407) then -- Fire Truck
					ax, ay, az =  -0.6, 10, 0.65
					bx, by, bz =  -0.6, 2.65, 0.7
				elseif (vModel == 544) then -- Fire Truck with ladder
					ax, ay, az =  -0.6, 10, 0.8
					bx, by, bz =  -0.6, 2.3, 0.85
				elseif (vModel == 523) then -- HPV1000
					ax, ay, az =  0, 1, 0.9
					bx, by, bz =  0, 0, 0.9
				elseif (vModel == 470) then -- Patriot
					ax, ay, az =  -0.55, 2, 0.65
					bx, by, bz =  -0.55, -0.4, 0.7
				-- elseif (vModel == 432) then -- Rhino; no cockpit
					-- ax, ay, az =  -0.55, 10, 0.85
					-- bx, by, bz =  -0.55, 2.4, 0.9
				-- elseif (vModel == 601) then -- SWAT; no cockpit
					-- ax, ay, az =  -0.55, 2, 0.65
					-- bx, by, bz =  -0.55, -0.4, 0.7
				elseif (vModel == 428) then -- Securicar
					ax, ay, az =  -0.63, 2, 0.7
					bx, by, bz =  -0.63, 0.3, 0.75
				elseif (vModel == 499) then -- Benson
					ax, ay, az =  -0.47, 2, 0.6
					bx, by, bz =  -0.47, -0.2, 0.65
				elseif (vModel == 609 or vModel == 498) then -- Boxville
					ax, ay, az =  -0.72, 2, 0.85
					bx, by, bz =  -0.72, 1.1, 0.9
				elseif (vModel == 524) then -- Cement Truck
					ax, ay, az =  -0.47, 10, 0.5
					bx, by, bz =  -0.47, 1, 0.55
				elseif (vModel == 532) then -- Combine Harvester
					ax, ay, az =  -1, 10, 1.15
					bx, by, bz =  -1, 2.8, 1.2
				elseif (vModel == 578) then -- DFT 30
					ax, ay, az =  -0.47, 10, 0.5
					bx, by, bz =  -0.47, 3.2, 0.7
				elseif (vModel == 486) then -- Dozer
					ax, ay, az =  0, 10, 1.8
					bx, by, bz =  0, -0.6, 1.8
				elseif (vModel == 406) then -- Dumper
					ax, ay, az =  -1.4, 10, 1.5
					bx, by, bz =  -1.4, 2.3, 1.5
				elseif (vModel == 573) then -- Dune
					ax, ay, az =  -0.6, 3, 0.85
					bx, by, bz =  -0.6, 1.8, 0.9
				elseif (vModel == 455) then -- Flatbed
					ax, ay, az =  -0.5, 10, 1
					bx, by, bz =  -0.5, 1, 1.2
				elseif (vModel == 588) then -- Hotdog
					ax, ay, az =  -0.72, 3, 1.05
					bx, by, bz =  -0.72, 2, 1.1
				elseif (vModel == 403) then -- Linerunner
					ax, ay, az =  -0.45, 2, 0.85
					bx, by, bz =  -0.45, 1.2, 0.9
				elseif (vModel == 514) then -- Tanker
					ax, ay, az =  -0.45, 2, 0.85
					bx, by, bz =  -0.45, 1.4, 0.9
				elseif (vModel == 423) then -- Mr. Whooppee
					ax, ay, az =  -0.55, 2, 0.75
					bx, by, bz =  -0.55, 0.4, 0.8
				elseif (vModel == 414) then -- Mule
					ax, ay, az =  -0.47, 10, 0.8
					bx, by, bz =  -0.47, 0.7, 0.85
				elseif (vModel == 443) then -- Packer
					ax, ay, az =  -0.45, 10, 0.9
					bx, by, bz =  -0.45, 2.6, 1
				elseif (vModel == 515) then -- Roadtrain
					ax, ay, az =  -0.55, 2, 0.9
					bx, by, bz =  -0.55, 1, 0.85
				elseif (vModel == 531) then -- Tractor
					ax, ay, az =  0, 1, 0.8
					bx, by, bz =  0, -0.7, 0.8
				elseif (vModel == 456) then -- Yankee
					ax, ay, az =  -0.47, 10, 0.8
					bx, by, bz =  -0.47, 1.2, 0.85
				elseif (vModel == 459) then -- Berkley's RC Van
					ax, ay, az =  -0.5, 2, 0.7
					bx, by, bz =  -0.5, 0.4, 0.75
				elseif (vModel == 422) then -- Bobcat
					ax, ay, az =  -0.45, 2, 0.4
					bx, by, bz =  -0.45, -0.3, 0.45
				elseif (vModel == 482) then -- Burrito
					ax, ay, az =  -0.5, 2, 0.45
					bx, by, bz =  -0.5, 0.2, 0.5
				elseif (vModel == 530) then -- Forklift
					ax, ay, az =  0, 10, 1.3
					bx, by, bz =  0, -1.6, 1.3
				elseif (vModel == 418) then -- Moonbeam
					ax, ay, az =  -0.55, 2, 0.45
					bx, by, bz =  -0.55, 0.2, 0.5
				elseif (vModel == 572) then -- Mower
					ax, ay, az =  0, 10, 0.9
					bx, by, bz =  0, -0.8, 0.9
				elseif (vModel == 582) then -- Newsvan
					ax, ay, az =  -0.43, 2, 0.55
					bx, by, bz =  -0.43, 0.3, 0.6
				elseif (vModel == 413) then -- Pony
					ax, ay, az =  -0.5, 2, 0.65
					bx, by, bz =  -0.5, 0.5, 0.7
				elseif (vModel == 440) then -- Rumpo
					ax, ay, az =  -0.53, 2, 0.55
					bx, by, bz =  -0.53, 0.5, 0.6
				elseif (vModel == 605 or vModel == 543) then -- Sadler
					ax, ay, az =  -0.45, 2, 0.45
					bx, by, bz =  -0.45, -0.3, 0.5
				elseif (vModel == 583) then -- Tug
					ax, ay, az =  0, 1, 1.1
					bx, by, bz =  0, -1.2, 1.1
				elseif (vModel == 478) then -- Walton
					ax, ay, az =  -0.45, 2, 0.45
					bx, by, bz =  -0.45, -0.2, 0.5
				elseif (vModel == 554) then -- Yosemite
					ax, ay, az =  -0.55, 2, 0.6
					bx, by, bz =  -0.55, -0.2, 0.65
				elseif (vModel == 536) then -- Blade
					ax, ay, az =  -0.55, 1, 0.3
					bx, by, bz =  -0.55, -0.4, 0.32
				elseif (vModel == 575) then -- Broadway
					ax, ay, az =  -0.5, 1, 0.7
					bx, by, bz =  -0.5, -0.2, 0.75
				elseif (vModel == 534) then -- Remington
					ax, ay, az =  -0.6, 1, 0.3
					bx, by, bz =  -0.6, -0.4, 0.35
				elseif (vModel == 567) then -- Savanna
					ax, ay, az =  -0.55, 1, 0.35
					bx, by, bz =  -0.55, 0, 0.4
				elseif (vModel == 535) then -- Slamvan
					ax, ay, az =  -0.45, 1, 0.45
					bx, by, bz =  -0.45, -0.2, 0.5
				elseif (vModel == 576) then -- Tornado
					ax, ay, az =  -0.47, 1, 0.5
					bx, by, bz =  -0.47, -0.4, 0.55
				elseif (vModel == 412) then -- Voodoo
					ax, ay, az =  -0.48, 1, 0.35
					bx, by, bz =  -0.48, -0.4, 0.4
				elseif (vModel == 402) then -- Buffalo
					ax, ay, az =  -0.55, 1, 0.4
					bx, by, bz =  -0.55, -0.6, 0.45
				elseif (vModel == 542) then -- Clover
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.4, 0.5
				elseif (vModel == 603) then -- Phoenix
					ax, ay, az =  -0.58, 1, 0.25
					bx, by, bz =  -0.58, -0.6, 0.3
				elseif (vModel == 475) then -- Sabre
					ax, ay, az =  -0.43, 1, 0.35
					bx, by, bz =  -0.43, -0.4, 0.4
				elseif (vModel == 568) then -- Bandito
					ax, ay, az =  0, 1, 0.35
					bx, by, bz =  0, -0.4, 0.4
				elseif (vModel == 424) then -- BF Injection
					ax, ay, az =  -0.38, 1, 0.5
					bx, by, bz =  -0.38, -0.4, 0.55
				elseif (vModel == 504) then -- Bloodring Banger
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.1, 0.5
				elseif (vModel == 457) then -- Caddy
					ax, ay, az =  -0.3, 1, 0.7
					bx, by, bz =  -0.3, -0.5, 0.75
				elseif (vModel == 483) then -- Camper
					ax, ay, az =  -0.4, 2, 0.55
					bx, by, bz =  -0.4, 1.3, 0.6
				elseif (vModel == 508) then -- Journey
					ax, ay, az =  -0.48, 2, 0.35
					bx, by, bz =  -0.48, 1.2, 0.4
				elseif (vModel == 571) then -- Kart
					ax, ay, az =  0, 10, 0.45
					bx, by, bz =  0, -0.6, 0.45
				elseif (vModel == 500) then -- Mesa
					ax, ay, az =  -0.45, 1, 0.5
					bx, by, bz =  -0.45, -0.5, 0.55
				elseif (vModel == 444) then -- Monster 1
					ax, ay, az =  -0.55, 2, 1.3
					bx, by, bz =  -0.55, 0.2, 1.3
				elseif (vModel == 556) then -- Monster 2
					ax, ay, az =  -0.57, 2, 1.3
					bx, by, bz =  -0.57, -0.1, 1.3
				elseif (vModel == 557) then -- Monster 3
					ax, ay, az =  -0.55, 2, 1.3
					bx, by, bz =  -0.55, -0.2, 1.3
				elseif (vModel == 471) then -- Quadbike
					ax, ay, az =  0, 10, 0.95
					bx, by, bz =  0, -0.4, 0.95
				elseif (vModel == 495) then -- Sandking
					ax, ay, az =  -0.5, 2, 0.6
					bx, by, bz =  -0.5, -0.3, 0.6
				elseif (vModel == 539) then -- Vortex
					ax, ay, az =  0, 2, 0.65
					bx, by, bz =  0, 0, 0.7
				elseif (vModel == 429) then -- Banshee
					ax, ay, az =  -0.47, 1, 0.3
					bx, by, bz =  -0.47, -0.8, 0.35
				elseif (vModel == 541) then -- Bullet
					ax, ay, az =  -0.47, 1, 0.3
					bx, by, bz =  -0.47, -0.45, 0.35
				elseif (vModel == 415) then -- Cheetah
					ax, ay, az =  -0.45, 1, 0.25
					bx, by, bz =  -0.45, -0.4, 0.3
				elseif (vModel == 480) then -- Comet
					ax, ay, az =  -0.42, 1, 0.35
					bx, by, bz =  -0.42, -0.5, 0.4
				elseif (vModel == 562) then -- Elegy
					ax, ay, az =  -0.52, 1, 0.4
					bx, by, bz =  -0.52, -0.4, 0.45
				elseif (vModel == 565) then -- Flash
					ax, ay, az =  -0.48, 1, 0.35
					bx, by, bz =  -0.48, -0.4, 0.4
				elseif (vModel == 434) then -- Hotknife
					ax, ay, az =  -0.27, 1, 0.3
					bx, by, bz =  -0.27, -0.7, 0.35
				elseif (vModel == 494) then -- Hotring
					ax, ay, az =  -0.47, 1, 0.35
					bx, by, bz =  -0.47, -0.6, 0.4
				elseif (vModel == 502) then -- Hotring 2
					ax, ay, az =  -0.43, 1, 0.35
					bx, by, bz =  -0.43, -0.5, 0.4
				elseif (vModel == 503) then -- Hotring 3
					ax, ay, az =  -0.43, 1, 0.4
					bx, by, bz =  -0.43, -0.7, 0.45
				elseif (vModel == 411) then -- Infernus
					ax, ay, az =  -0.47, 1, 0.35
					bx, by, bz =  -0.47, -0.3, 0.4
				elseif (vModel == 559) then -- Jester
					ax, ay, az =  -0.48, 1, 0.4
					bx, by, bz =  -0.48, -0.5, 0.45
				elseif (vModel == 561) then -- Stratum
					ax, ay, az =  -0.53, 1, 0.4
					bx, by, bz =  -0.53, -0.1, 0.45
				elseif (vModel == 560) then -- Sultan
					ax, ay, az =  -0.5, 1, 0.45
					bx, by, bz =  -0.5, -0.1, 0.5
				elseif (vModel == 506) then -- Super GT
					ax, ay, az =  -0.46, 1, 0.25
					bx, by, bz =  -0.46, -0.65, 0.3
				elseif (vModel == 451) then -- Turismo
					ax, ay, az =  -0.47, 1, 0.25
					bx, by, bz =  -0.47, -0.6, 0.3
				elseif (vModel == 558) then -- Uranus
					ax, ay, az =  -0.52, 1, 0.45
					bx, by, bz =  -0.52, -0.5, 0.5
				elseif (vModel == 555) then -- Windsor
					ax, ay, az =  -0.45, 1, 0.25
					bx, by, bz =  -0.45, -0.5, 0.35
				elseif (vModel == 477) then -- ZR 350
					ax, ay, az =  -0.45, 1, 0.4
					bx, by, bz =  -0.45, -0.5, 0.45
				elseif (vModel == 579) then -- Huntley
					ax, ay, az =  -0.47, 1, 0.75
					bx, by, bz =  -0.47, -0.5, 0.8
				elseif (vModel == 400) then -- Landstalker
					ax, ay, az =  -0.34, 1, 0.35
					bx, by, bz =  -0.34, -0.25, 0.4
				elseif (vModel == 404) then -- Perennial
					ax, ay, az =  -0.47, 1, 0.5
					bx, by, bz =  -0.47, -0.4, 0.55
				elseif (vModel == 479) then -- Regina
					ax, ay, az =  -0.52, 1, 0.55
					bx, by, bz =  -0.52, -0.4, 0.6
				elseif (vModel == 442) then -- Romero
					ax, ay, az =  -0.5, 1, 0.4
					bx, by, bz =  -0.5, 0, 0.5
				elseif (vModel == 458) then -- Solair
					ax, ay, az =  -0.46, 1, 0.3
					bx, by, bz =  -0.46, -0.15, 0.35
				else ax = nil
				end
				if ax then
					attachElements(fly, theVehicle, ax, ay, az)
					attachElements(gnat, theVehicle, bx, by, bz)
					attachElements(bee, theVehicle, bx+1, by, bz)
					charles = addEventHandler("onClientPreRender", getRootElement(), cam)
					setElementAlpha(getLocalPlayer(), 255*visiblecock)
					cockModel = vModel
				else
					destroyElement(fly)
					destroyElement(gnat)
					destroyElement(bee)
				end
			end
		end
	end
addEventHandler("onClientPlayerVehicleEnter", getLocalPlayer(), camStart)

function camStop(theVehicle, seat)
			if charles  and fly then
				removeEventHandler("onClientPreRender", getRootElement(), cam)
				charles = nil
				setCameraTarget(getLocalPlayer())
				setElementAlpha(getLocalPlayer(), 255)
				destroyElement(fly)
				destroyElement(gnat)
				destroyElement(bee)
			end
	end
addEventHandler("onClientPlayerVehicleExit", getLocalPlayer(), camStop)
addEventHandler("onClientPlayerWasted", getLocalPlayer(), camStop)

function look(key, keyState, direction)
		if charles then
			local theVehicle = getPedOccupiedVehicle(getLocalPlayer())
			if direction == "left" then
				attachElements(fly, theVehicle, ax-5, by, bz)
				attachElements(gnat, theVehicle, bx+0.1, by+0.2, bz)
				attachElements(bee, theVehicle, bx, by+1, bz)
			elseif direction == "right" then
				attachElements(fly, theVehicle, ax+5, by, bz)
				attachElements(gnat, theVehicle, bx, by, bz)
				attachElements(bee, theVehicle, bx, by-1, bz)
			elseif direction == "normal" then
				attachElements(fly, theVehicle, ax, ay, az)
				attachElements(gnat, theVehicle, bx, by, bz)
				attachElements(bee, theVehicle, bx+1, by, bz)
			elseif direction == "behind" then
				attachElements(fly, theVehicle, ax, ay-10, az)
				attachElements(gnat, theVehicle, bx, by+0.2, bz)
				attachElements(bee, theVehicle, bx-1, by, bz)
			elseif direction == "up" then
				attachElements(fly, theVehicle, ax, ay, az+10)
				attachElements(gnat, theVehicle, bx, by, bz-0.1)
			end
		end
	end

bindKey("vehicle_look_behind", "down", look, "behind")
bindKey("vehicle_look_behind", "up", look, "normal")

bindKey("vehicle_look_left", "down", look, "left")
bindKey("vehicle_look_left", "up", look, "normal")

bindKey("vehicle_look_right", "down", look, "right")
bindKey("vehicle_look_right", "up", look, "normal")

function aircraftCompatibility(thePlayer, enabled)
		if (tonumber(enabled) == 1) and (aircraftCompat == 0 )then
			unbindKey("vehicle_look_behind", "down", look, "behind")
			unbindKey("vehicle_look_behind", "up", look, "normal")
			unbindKey("vehicle_look_left", "down", look, "left")
			unbindKey("vehicle_look_left", "up", look, "normal")
			unbindKey("vehicle_look_right", "down", look, "right")
			unbindKey("vehicle_look_right", "up", look, "normal")
			
			bindKey("special_control_down", "down", look, "behind")
			bindKey("special_control_down", "up", look, "normal")
			bindKey("special_control_left", "down", look, "left")
			bindKey("special_control_left", "up", look, "normal")
			bindKey("special_control_right", "down", look, "right")
			bindKey("special_control_right", "up", look, "normal")
			bindKey("special_control_up", "down", look, "up")
			bindKey("special_control_up", "up", look, "normal")
			
			aircraftCompat = 1
		elseif (tonumber(enabled) == 0) and (aircraftCompat == 1) then
			bindKey("vehicle_look_behind", "down", look, "behind")
			bindKey("vehicle_look_behind", "up", look, "normal")
			bindKey("vehicle_look_left", "down", look, "left")
			bindKey("vehicle_look_left", "up", look, "normal")
			bindKey("vehicle_look_right", "down", look, "right")
			bindKey("vehicle_look_right", "up", look, "normal")
			
			unbindKey("special_control_down", "down", look, "behind")
			unbindKey("special_control_down", "up", look, "normal")
			unbindKey("special_control_left", "down", look, "left")
			unbindKey("special_control_left", "up", look, "normal")
			unbindKey("special_control_right", "down", look, "right")
			unbindKey("special_control_right", "up", look, "normal")
			unbindKey("special_control_up", "down", look, "up")
			unbindKey("special_control_up", "up", look, "normal")
			
			aircraftCompat = 0
		end
	end
	
addCommandHandler("aircraftcompat", aircraftCompatibility)


function playerVisibleInCockpit(thePlayer, vis)
		visiblecock = tonumber(vis)
		if getPedOccupiedVehicle(getLocalPlayer()) then
			setElementAlpha(getLocalPlayer(), 255*visiblecock)
		end
	end
addCommandHandler("playervisibleincar", playerVisibleInCockpit)

function cockpitSwitch(thePlayer, cock) -- Comment / delete this to force cockpits on players
		cockpit = tonumber(cock)
	end
addCommandHandler("usecockpits", cockpitSwitch)

function cockpitRoll(thePlayer, rolly) -- Comment / delete this to force cockpits on players
		if tonumber(rolly) == 0 then
		rollEnabler = nil
		roll = 0
		elseif tonumber(rolly) == 1 then
		rollEnabler = 1
		end
	end
addCommandHandler("useroll", cockpitRoll)