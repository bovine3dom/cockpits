visiblecock = 1
cockpit = 1

function cam()
		local theVehicle = getPedOccupiedVehicle(getLocalPlayer())
		if theVehicle then
			local x, y, z = getElementPosition(gnat)
			local cx, cy, cz = getElementPosition(fly)
			setCameraMatrix(x, y, z, cx, cy, cz)
			cockVehicle = theVehicle
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
				local vModel = getElementModel(theVehicle)
				if (vModel == 426 or vModel ==  596 or vModel == 597 or vModel == 420) then -- Premier based cars
					attachElements(fly, theVehicle, -0.55, 1, 0.5)
					attachElements(gnat, theVehicle, -0.55, -0.2, 0.55)
				elseif (vModel == 598) then -- LVPD
					attachElements(fly, theVehicle, -0.55, 1, 0.6)
					attachElements(gnat, theVehicle, -0.55, -0.2, 0.65)
				elseif (vModel == 490) then -- FBI Rancher
					attachElements(fly, theVehicle, -0.55, 3, 0.7)
					attachElements(gnat, theVehicle, -0.55, 0.2, 0.75)
				elseif (vModel == 427) then -- SWAT Truck
					attachElements(fly, theVehicle, -0.5, 3, 0.9)
					attachElements(gnat, theVehicle, -0.5, 0.8, 0.95)
				elseif (vModel == 599 or vModel == 489 or vModel == 505) then -- Rancher based cars
					attachElements(fly, theVehicle, -0.55, 1, 0.7)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.75)
				elseif (vModel == 602) then -- Alpha
					attachElements(fly, theVehicle, -0.55, 1, 0.3)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.37)
				elseif (vModel == 496) then -- Blista Compact
					attachElements(fly, theVehicle, -0.55, 1, 0.4)
					attachElements(gnat, theVehicle, -0.55, -0.5, 0.45)
				elseif (vModel == 401) then -- Bravura
					attachElements(fly, theVehicle, -0.55, 1, 0.4)
					attachElements(gnat, theVehicle, -0.55, -0.3, 0.45)
				elseif (vModel == 518) then -- Buccaneer
					attachElements(fly, theVehicle, -0.6, 1, 0.35)
					attachElements(gnat, theVehicle, -0.6, -0.2, 0.4)
				elseif (vModel == 527) then -- Cadrona
					attachElements(fly, theVehicle, -0.45, 1, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.3, 0.5)
				elseif (vModel == 589) then -- Club
					attachElements(fly, theVehicle, -0.5, 1, 0.65)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.7)
				elseif (vModel == 419) then -- Esperanto
					attachElements(fly, theVehicle, -0.5, 1, 0.3)
					attachElements(gnat, theVehicle, -0.5, -0.4, 0.35)
				elseif (vModel == 533) then -- Feltzer
					attachElements(fly, theVehicle, -0.5, 1, 0.4)
					attachElements(gnat, theVehicle, -0.5, -0.4, 0.45)
				elseif (vModel == 526) then -- Fortune
					attachElements(fly, theVehicle, -0.5, 1, 0.3)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.35)
				elseif (vModel == 474) then -- Hermes
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.4, 0.48)
				elseif (vModel == 545) then -- Hustler
					attachElements(fly, theVehicle, -0.4, 1, 0.4)
					attachElements(gnat, theVehicle, -0.4, -0.4, 0.45)
				elseif (vModel == 517) then -- Majestic
					attachElements(fly, theVehicle, -0.45, 1, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.3, 0.5)
				elseif (vModel == 410) then -- Manana
					attachElements(fly, theVehicle, -0.45, 1, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.3, 0.5)
				elseif (vModel == 600) then -- Picador
					attachElements(fly, theVehicle, -0.55, 1, 0.42)
					attachElements(gnat, theVehicle, -0.55, -0.1, 0.47)
				elseif (vModel == 436) then -- Previon
					attachElements(fly, theVehicle, -0.45, 1, 0.47)
					attachElements(gnat, theVehicle, -0.45, -0.35, 0.52)
				elseif (vModel == 580) then -- Stafford
					attachElements(fly, theVehicle, -0.55, 1, 0.65)
					attachElements(gnat, theVehicle, -0.55, -0.2, 0.75)
				elseif (vModel == 439) then -- Stallion
					attachElements(fly, theVehicle, -0.5, 1, 0.35)
					attachElements(gnat, theVehicle, -0.5, -0.7, 0.4)
				elseif (vModel == 549) then -- Tampa
					attachElements(fly, theVehicle, -0.45, 1, 0.4)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.45)
				elseif (vModel == 491) then -- Virgo
					attachElements(fly, theVehicle, -0.45, 1, 0.3)
					attachElements(gnat, theVehicle, -0.45, -0.5, 0.35)
				elseif (vModel == 445) then -- Admiral
					attachElements(fly, theVehicle, -0.5, 1, 0.5)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.55)
				elseif (vModel == 507) then -- Elegant
					attachElements(fly, theVehicle, -0.55, 1, 0.45)
					attachElements(gnat, theVehicle, -0.55, -0.3, 0.5)
				elseif (vModel == 585) then -- Emperor
					attachElements(fly, theVehicle, -0.5, 1, 0.6)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.65)
				elseif (vModel == 587) then -- Euros
					attachElements(fly, theVehicle, -0.55, 1, 0.4)
					attachElements(gnat, theVehicle, -0.55, -0.6, 0.45)
				elseif (vModel == 604 or vModel == 466) then -- Glendale
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.5)
				elseif (vModel == 492) then -- Greenwood
					attachElements(fly, theVehicle, -0.5, 1, 0.5)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.55)
				elseif (vModel == 546) then -- Intruder
					attachElements(fly, theVehicle, -0.6, 1, 0.45)
					attachElements(gnat, theVehicle, -0.6, -0.5, 0.5)
				elseif (vModel == 551) then -- Merit
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.5)
				elseif (vModel == 516) then -- Nebula
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.5)
				elseif (vModel == 467) then -- Oceanic
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.5)
				elseif (vModel == 547) then -- Primo
					attachElements(fly, theVehicle, -0.5, 1, 0.5)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.55)
				elseif (vModel == 405) then -- Sentinel
					attachElements(fly, theVehicle, -0.4, 1, 0.35)
					attachElements(gnat, theVehicle, -0.4, -0.3, 0.4)
				elseif (vModel == 409) then -- Stretch
					attachElements(fly, theVehicle, -0.5, 2, 0.4)
					attachElements(gnat, theVehicle, -0.5, 0.7, 0.45)
				elseif (vModel == 550) then -- Sunrise
					attachElements(fly, theVehicle, -0.55, 1, 0.3)
					attachElements(gnat, theVehicle, -0.55, -0.3, 0.4)
				elseif (vModel == 566) then -- Tahoma
					attachElements(fly, theVehicle, -0.55, 1, 0.35)
					attachElements(gnat, theVehicle, -0.55, -0.25, 0.45)
				elseif (vModel == 540) then -- Vincent
					attachElements(fly, theVehicle, -0.55, 1, 0.35)
					attachElements(gnat, theVehicle, -0.55, -0.45, 0.4)
				elseif (vModel == 421) then -- Washington
					attachElements(fly, theVehicle, -0.45, 1, 0.35)
					attachElements(gnat, theVehicle, -0.45, -0.15, 0.4)
				elseif (vModel == 529) then -- Willard
					attachElements(fly, theVehicle, -0.55, 1, 0.5)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.55)
				-- elseif (vModel == 592) then -- Andromeda has no cockpit
					-- attachElements(fly, theVehicle, 0, 20, 2)
					-- attachElements(gnat, theVehicle, 0, 13, 4)
				elseif (vModel == 577) then -- AT 400
					attachElements(fly, theVehicle, -0.5, 30, 4)
					attachElements(gnat, theVehicle, -0.5, 24, 4.8)
				elseif (vModel == 511) then -- Beagle
					attachElements(fly, theVehicle, -0.4, 4, -0.5)
					attachElements(gnat, theVehicle, -0.4, 1.7, 0)
				elseif (vModel == 548) then -- Cargobob
					attachElements(fly, theVehicle, -0.68, 9, -0.5)
					attachElements(gnat, theVehicle, -0.68, 4.3, -0.1)
				elseif (vModel == 512) then -- Cropduster
					attachElements(fly, theVehicle, 0, 1, 0.5)
					attachElements(gnat, theVehicle, 0, -0.4, 0.5)
				elseif (vModel == 593) then -- Dodo
					attachElements(fly, theVehicle, -0.35, 1, 0.5)
					attachElements(gnat, theVehicle, -0.35, -0.2, 0.7)
				elseif (vModel == 425) then -- Hunter
					attachElements(fly, theVehicle, 0, 5, 0.7)
					attachElements(gnat, theVehicle, 0, 2.3, 0.7)
				elseif (vModel == 520) then -- Hydra
					attachElements(fly, theVehicle, 0, 5, 0.7)
					attachElements(gnat, theVehicle, 0, 2.5, 0.7)
				elseif (vModel == 417) then -- Leviathan
					attachElements(fly, theVehicle, -0.5, 9, 1.2)
					attachElements(gnat, theVehicle, -0.5, 3, 1.2)
				elseif (vModel == 487 or vModel == 497) then -- Maverick based vehicles
					attachElements(fly, theVehicle, -0.5, 5, 0.5)
					attachElements(gnat, theVehicle, -0.5, 1.3, 0.5)
				elseif (vModel == 553) then -- Nevada
					attachElements(fly, theVehicle, -0.45, 20, 1)
					attachElements(gnat, theVehicle, -0.45, 9.3, 0.5)
				elseif (vModel == 488) then -- News chopper
					attachElements(fly, theVehicle, -0.5, 5, 0.5)
					attachElements(gnat, theVehicle, -0.5, 0.5, 0.5)
				elseif (vModel == 563) then -- Raindance
					attachElements(fly, theVehicle, -0.5, 9, 0.3)
					attachElements(gnat, theVehicle, -0.5, 2.3, 0.3)
				elseif (vModel == 476) then -- Rustler
					attachElements(fly, theVehicle, 0, 1, 0.5)
					attachElements(gnat, theVehicle, 0, -0.8, 0.4)
				elseif (vModel == 469 or vModel ==  447) then -- Sparrow based vehicles
					attachElements(fly, theVehicle, -0.4, 5, 0.5)
					attachElements(gnat, theVehicle, -0.4, 0.7, 0.5)
				elseif (vModel == 519) then -- Shamal
					attachElements(fly, theVehicle, -0.4, 10, 0)
					attachElements(gnat, theVehicle, -0.4, 5, 0.5)
				elseif (vModel == 460) then -- Skimmer
					attachElements(fly, theVehicle, -0.35, 1, 0.5)
					attachElements(gnat, theVehicle, -0.35, 0, 0.7)
				elseif (vModel == 513) then -- Stunt Plane
					attachElements(fly, theVehicle, 0, 1, 0.2)
					attachElements(gnat, theVehicle, 0, -1.3, 0.2)
				elseif (vModel == 581 or vModel == 521 or vModel == 461 or vModel == 522) then -- BF 400, PCJ 600, FCR 900, NRG 500
					attachElements(fly, theVehicle, 0, 1, 0.8)
					attachElements(gnat, theVehicle, 0, -0.1, 0.8)
				elseif (vModel == 509) then -- Bike
					attachElements(fly, theVehicle, 0, 1, 0.7)
					attachElements(gnat, theVehicle, 0, -0.3, 0.7)
				elseif (vModel == 481) then -- BMX
					attachElements(fly, theVehicle, 0, 1, 0.7)
					attachElements(gnat, theVehicle, 0, -0.2, 0.7)
				elseif (vModel == 462 or vModel == 448) then -- Faggio based vehicles
					attachElements(fly, theVehicle, 0, 1, 0.9)
					attachElements(gnat, theVehicle, 0, -0.1, 0.9)
				elseif (vModel == 463) then -- Freeway
					attachElements(fly, theVehicle, 0, 1, 0.8)
					attachElements(gnat, theVehicle, 0, -0.6, 0.8)
				elseif (vModel == 510) then -- Mountain Bike
					attachElements(fly, theVehicle, 0, 1, 0.7)
					attachElements(gnat, theVehicle, 0, -0.1, 0.7)
				elseif (vModel == 468) then -- Sanchez
					attachElements(fly, theVehicle, 0, 1, 0.7)
					attachElements(gnat, theVehicle, 0, -0.1, 0.7)
				elseif (vModel == 586) then -- Wayfarer
					attachElements(fly, theVehicle, 0, 1, 1)
					attachElements(gnat, theVehicle, 0, -0.4, 1)
				elseif (vModel == 472) then -- Coastguard
					attachElements(fly, theVehicle, -0.2, 1, 1.4)
					attachElements(gnat, theVehicle, -0.2, -0.1, 1.5)
				elseif (vModel == 473) then -- Dinghy
					attachElements(fly, theVehicle, 0, 2, 1.3)
					attachElements(gnat, theVehicle, 0, 0.6, 1.3)
				elseif (vModel == 493) then -- Jetmax
					attachElements(fly, theVehicle, -0.7, 2, 1.7)
					attachElements(gnat, theVehicle, -0.7, 0.3, 1.7)
				-- elseif (vModel == 453) then -- Reefer; can't see water due to glass bug
					-- attachElements(fly, theVehicle, 0.4, 10, 1.9)
					-- attachElements(gnat, theVehicle, 0.4, 1.6, 1.9)
				elseif (vModel == 595) then -- Launch
					attachElements(fly, theVehicle, 0.5, 10, 0.7)
					attachElements(gnat, theVehicle, 0.5, 0.5, 0.7)
				elseif (vModel == 484) then -- Marquis
					attachElements(fly, theVehicle, 0, 10, 2.2)
					attachElements(gnat, theVehicle, 0, -5, 2.2)
				-- elseif (vModel == 430) then -- Predator; can't see water due to glass bug
					-- attachElements(fly, theVehicle, 0.5, 10, 1.4)
					-- attachElements(gnat, theVehicle, 0.5, 0.7, 1.5)
				-- elseif (vModel == 452) then -- Speeder; can't see water due to glass bug
					-- attachElements(fly, theVehicle, 0.6, 10, 1.4)
					-- attachElements(gnat, theVehicle, 0.6, 2.7, 1.4)
				-- elseif (vModel == 446) then -- Squalo; can't see water due to glass bug
					-- attachElements(fly, theVehicle, 0.6, 10, 2)
					-- attachElements(gnat, theVehicle, 0.6, 0, 2)
				-- elseif (vModel == 454) then -- Tropic; can't see water due to glass bug
					-- attachElements(fly, theVehicle, -0.6, 10, 4)
					-- attachElements(gnat, theVehicle, -0.6, 2.5, 4)
				elseif (vModel == 485) then -- Baggage
					attachElements(fly, theVehicle, -0.1, 1, 1)
					attachElements(gnat, theVehicle, -0.1, -0.6, 1)
				elseif (vModel == 431) then -- Bus
					attachElements(fly, theVehicle, -0.75, 10, 1.2)
					attachElements(gnat, theVehicle, -0.75, 4.5, 1.2)
				elseif (vModel == 438) then -- Cabbie
					attachElements(fly, theVehicle, -0.5, 1, 0.35)
					attachElements(gnat, theVehicle, -0.5, 0.1, 0.4)
				-- elseif (vModel == 437) then -- Coach; doesn't have a cockpit
					-- attachElements(fly, theVehicle, -0.75, 10, 1.2)
					-- attachElements(gnat, theVehicle, -0.75, 4, 1.2)
				elseif (vModel == 574) then -- Sweeper
					attachElements(fly, theVehicle, -0.25, 10, 0.8)
					attachElements(gnat, theVehicle, -0.25, 0.2, 0.8)
				elseif (vModel == 525) then -- Towtruck
					attachElements(fly, theVehicle, -0.52, 10, 0.85)
					attachElements(gnat, theVehicle, -0.52, -0.1, 0.9)
				elseif (vModel == 408) then -- Trashmaster
					attachElements(fly, theVehicle, -0.45, 10, 0.55)
					attachElements(gnat, theVehicle, -0.45, 2.4, 0.6)
				elseif (vModel == 552) then -- Utility Van
					attachElements(fly, theVehicle, -0.6, 2, 0.85)
					attachElements(gnat, theVehicle, -0.6, 0.3, 0.9)
				elseif (vModel == 416) then -- Ambulance
					attachElements(fly, theVehicle, -0.45, 2, 0.7)
					attachElements(gnat, theVehicle, -0.45, 0.6, 0.75)
				elseif (vModel == 433) then -- Barracks
					attachElements(fly, theVehicle, -0.5, 5, 1.2)
					attachElements(gnat, theVehicle, -0.5, 0.9, 1.25)
				elseif (vModel == 528) then -- FBI Truck
					attachElements(fly, theVehicle, -0.55, 1, 0.55)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.6)
				elseif (vModel == 407) then -- Fire Truck
					attachElements(fly, theVehicle, -0.6, 10, 0.65)
					attachElements(gnat, theVehicle, -0.6, 2.65, 0.7)
				elseif (vModel == 544) then -- Fire Truck with ladder
					attachElements(fly, theVehicle, -0.6, 10, 0.8)
					attachElements(gnat, theVehicle, -0.6, 2.3, 0.85)
				elseif (vModel == 523) then -- HPV1000
					attachElements(fly, theVehicle, 0, 1, 0.9)
					attachElements(gnat, theVehicle, 0, 0, 0.9)
				elseif (vModel == 470) then -- Patriot
					attachElements(fly, theVehicle, -0.55, 2, 0.65)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.7)
				-- elseif (vModel == 432) then -- Rhino; no cockpit
					-- attachElements(fly, theVehicle, -0.55, 10, 0.85)
					-- attachElements(gnat, theVehicle, -0.55, 2.4, 0.9)
				-- elseif (vModel == 601) then -- SWAT; no cockpit
					-- attachElements(fly, theVehicle, -0.55, 2, 0.65)
					-- attachElements(gnat, theVehicle, -0.55, -0.4, 0.7)
				elseif (vModel == 428) then -- Securicar
					attachElements(fly, theVehicle, -0.63, 2, 0.7)
					attachElements(gnat, theVehicle, -0.63, 0.3, 0.75)
				elseif (vModel == 499) then -- Benson
					attachElements(fly, theVehicle, -0.47, 2, 0.6)
					attachElements(gnat, theVehicle, -0.47, -0.2, 0.65)
				elseif (vModel == 609 or vModel == 498) then -- Boxville
					attachElements(fly, theVehicle, -0.72, 2, 0.85)
					attachElements(gnat, theVehicle, -0.72, 1.1, 0.9)
				elseif (vModel == 524) then -- Cement Truck
					attachElements(fly, theVehicle, -0.47, 10, 0.5)
					attachElements(gnat, theVehicle, -0.47, 1, 0.55)
				elseif (vModel == 532) then -- Combine Harvester
					attachElements(fly, theVehicle, -1, 10, 1.15)
					attachElements(gnat, theVehicle, -1, 2.8, 1.2)
				elseif (vModel == 578) then -- DFT 30
					attachElements(fly, theVehicle, -0.47, 10, 0.5)
					attachElements(gnat, theVehicle, -0.47, 3.2, 0.7)
				elseif (vModel == 486) then -- Dozer
					attachElements(fly, theVehicle, 0, 10, 1.8)
					attachElements(gnat, theVehicle, 0, -0.6, 1.8)
				elseif (vModel == 406) then -- Dumper
					attachElements(fly, theVehicle, -1.4, 10, 1.5)
					attachElements(gnat, theVehicle, -1.4, 2.3, 1.5)
				elseif (vModel == 573) then -- Dune
					attachElements(fly, theVehicle, -0.6, 3, 0.85)
					attachElements(gnat, theVehicle, -0.6, 1.8, 0.9)
				elseif (vModel == 455) then -- Flatbed
					attachElements(fly, theVehicle, -0.5, 10, 1)
					attachElements(gnat, theVehicle, -0.5, 1, 1.2)
				elseif (vModel == 588) then -- Hotdog
					attachElements(fly, theVehicle, -0.72, 3, 1.05)
					attachElements(gnat, theVehicle, -0.72, 2, 1.1)
				elseif (vModel == 403 or vModel == 514) then -- Linerunner
					attachElements(fly, theVehicle, -0.45, 2, 0.85)
					attachElements(gnat, theVehicle, -0.45, 1.2, 0.9)
				elseif (vModel == 423) then -- Mr. Whooppee
					attachElements(fly, theVehicle, -0.55, 2, 0.75)
					attachElements(gnat, theVehicle, -0.55, 0.4, 0.8)
				elseif (vModel == 414) then -- Mule
					attachElements(fly, theVehicle, -0.47, 10, 0.8)
					attachElements(gnat, theVehicle, -0.47, 0.7, 0.85)
				elseif (vModel == 443) then -- Packer
					attachElements(fly, theVehicle, -0.45, 10, 0.9)
					attachElements(gnat, theVehicle, -0.45, 2.6, 1)
				elseif (vModel == 515) then -- Roadtrain
					attachElements(fly, theVehicle, -0.55, 2, 0.9)
					attachElements(gnat, theVehicle, -0.55, 1, 0.85)
				elseif (vModel == 531) then -- Tractor
					attachElements(fly, theVehicle, 0, 1, 0.8)
					attachElements(gnat, theVehicle, 0, -0.7, 0.8)
				elseif (vModel == 456) then -- Yankee
					attachElements(fly, theVehicle, -0.47, 10, 0.8)
					attachElements(gnat, theVehicle, -0.47, 1.2, 0.85)
				elseif (vModel == 459) then -- Berkley's RC Van
					attachElements(fly, theVehicle, -0.5, 2, 0.7)
					attachElements(gnat, theVehicle, -0.5, 0.4, 0.75)
				elseif (vModel == 422) then -- Bobcat
					attachElements(fly, theVehicle, -0.45, 2, 0.4)
					attachElements(gnat, theVehicle, -0.45, -0.3, 0.45)
				elseif (vModel == 482) then -- Burrito
					attachElements(fly, theVehicle, -0.5, 2, 0.45)
					attachElements(gnat, theVehicle, -0.5, 0.2, 0.5)
				elseif (vModel == 530) then -- Forklift
					attachElements(fly, theVehicle, 0, 10, 1.3)
					attachElements(gnat, theVehicle, 0, -1.6, 1.3)
				elseif (vModel == 418) then -- Moonbeam
					attachElements(fly, theVehicle, -0.55, 2, 0.45)
					attachElements(gnat, theVehicle, -0.55, 0.2, 0.5)
				elseif (vModel == 572) then -- Mower
					attachElements(fly, theVehicle, 0, 10, 0.9)
					attachElements(gnat, theVehicle, 0, -0.8, 0.9)
				elseif (vModel == 582) then -- Newsvan
					attachElements(fly, theVehicle, -0.43, 2, 0.55)
					attachElements(gnat, theVehicle, -0.43, 0.3, 0.6)
				elseif (vModel == 413) then -- Pony
					attachElements(fly, theVehicle, -0.5, 2, 0.65)
					attachElements(gnat, theVehicle, -0.5, 0.5, 0.7)
				elseif (vModel == 440) then -- Rumpo
					attachElements(fly, theVehicle, -0.53, 2, 0.55)
					attachElements(gnat, theVehicle, -0.53, 0.5, 0.6)
				elseif (vModel == 605 or vModel == 543) then -- Sadler
					attachElements(fly, theVehicle, -0.45, 2, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.3, 0.5)
				elseif (vModel == 583) then -- Tug
					attachElements(fly, theVehicle, 0, 1, 1.1)
					attachElements(gnat, theVehicle, 0, -1.2, 1.1)
				elseif (vModel == 478) then -- Walton
					attachElements(fly, theVehicle, -0.45, 2, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.2, 0.5)
				elseif (vModel == 554) then -- Yosemite
					attachElements(fly, theVehicle, -0.55, 2, 0.6)
					attachElements(gnat, theVehicle, -0.55, -0.2, 0.65)
				elseif (vModel == 536) then -- Blade
					attachElements(fly, theVehicle, -0.55, 1, 0.3)
					attachElements(gnat, theVehicle, -0.55, -0.4, 0.32)
				elseif (vModel == 575) then -- Broadway
					attachElements(fly, theVehicle, -0.5, 1, 0.7)
					attachElements(gnat, theVehicle, -0.5, -0.2, 0.75)
				elseif (vModel == 534) then -- Remington
					attachElements(fly, theVehicle, -0.6, 1, 0.3)
					attachElements(gnat, theVehicle, -0.6, -0.4, 0.35)
				elseif (vModel == 567) then -- Savanna
					attachElements(fly, theVehicle, -0.55, 1, 0.35)
					attachElements(gnat, theVehicle, -0.55, 0, 0.4)
				elseif (vModel == 535) then -- Slamvan
					attachElements(fly, theVehicle, -0.45, 1, 0.45)
					attachElements(gnat, theVehicle, -0.45, -0.2, 0.5)
				elseif (vModel == 576) then -- Tornado
					attachElements(fly, theVehicle, -0.47, 1, 0.5)
					attachElements(gnat, theVehicle, -0.47, -0.4, 0.55)
				elseif (vModel == 412) then -- Voodoo
					attachElements(fly, theVehicle, -0.48, 1, 0.35)
					attachElements(gnat, theVehicle, -0.48, -0.4, 0.4)
				elseif (vModel == 402) then -- Buffalo
					attachElements(fly, theVehicle, -0.55, 1, 0.4)
					attachElements(gnat, theVehicle, -0.55, -0.6, 0.45)
				elseif (vModel == 542) then -- Clover
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.4, 0.5)
				elseif (vModel == 603) then -- Phoenix
					attachElements(fly, theVehicle, -0.58, 1, 0.25)
					attachElements(gnat, theVehicle, -0.58, -0.6, 0.3)
				elseif (vModel == 475) then -- Sabre
					attachElements(fly, theVehicle, -0.43, 1, 0.35)
					attachElements(gnat, theVehicle, -0.43, -0.4, 0.4)
				elseif (vModel == 568) then -- Bandito
					attachElements(fly, theVehicle, 0, 1, 0.35)
					attachElements(gnat, theVehicle, 0, -0.4, 0.4)
				elseif (vModel == 424) then -- BF Injection
					attachElements(fly, theVehicle, -0.38, 1, 0.5)
					attachElements(gnat, theVehicle, -0.38, -0.4, 0.55)
				elseif (vModel == 504) then -- Bloodring Banger
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.1, 0.5)
				elseif (vModel == 457) then -- Caddy
					attachElements(fly, theVehicle, -0.3, 1, 0.7)
					attachElements(gnat, theVehicle, -0.3, -0.5, 0.75)
				elseif (vModel == 483) then -- Camper
					attachElements(fly, theVehicle, -0.4, 2, 0.55)
					attachElements(gnat, theVehicle, -0.4, 1.3, 0.6)
				elseif (vModel == 508) then -- Journey
					attachElements(fly, theVehicle, -0.48, 2, 0.35)
					attachElements(gnat, theVehicle, -0.48, 1.2, 0.4)
				elseif (vModel == 571) then -- Kart
					attachElements(fly, theVehicle, 0, 10, 0.45)
					attachElements(gnat, theVehicle, 0, -0.6, 0.45)
				elseif (vModel == 500) then -- Mesa
					attachElements(fly, theVehicle, -0.45, 1, 0.5)
					attachElements(gnat, theVehicle, -0.45, -0.5, 0.55)
				elseif (vModel == 444) then -- Monster 1
					attachElements(fly, theVehicle, -0.55, 2, 1.3)
					attachElements(gnat, theVehicle, -0.55, 0.2, 1.3)
				elseif (vModel == 556) then -- Monster 2
					attachElements(fly, theVehicle, -0.57, 2, 1.3)
					attachElements(gnat, theVehicle, -0.57, -0.1, 1.3)
				elseif (vModel == 557) then -- Monster 3
					attachElements(fly, theVehicle, -0.55, 2, 1.3)
					attachElements(gnat, theVehicle, -0.55, -0.2, 1.3)
				elseif (vModel == 471) then -- Quadbike
					attachElements(fly, theVehicle, 0, 10, 0.95)
					attachElements(gnat, theVehicle, 0, -0.4, 0.95)
				elseif (vModel == 495) then -- Sandking
					attachElements(fly, theVehicle, -0.5, 2, 0.6)
					attachElements(gnat, theVehicle, -0.5, -0.3, 0.6)
				elseif (vModel == 539) then -- Vortex
					attachElements(fly, theVehicle, 0, 2, 0.65)
					attachElements(gnat, theVehicle, 0, 0, 0.7)
				elseif (vModel == 429) then -- Banshee
					attachElements(fly, theVehicle, -0.47, 1, 0.3)
					attachElements(gnat, theVehicle, -0.47, -0.8, 0.35)
				elseif (vModel == 541) then -- Bullet
					attachElements(fly, theVehicle, -0.47, 1, 0.3)
					attachElements(gnat, theVehicle, -0.47, -0.5, 0.35)
				elseif (vModel == 415) then -- Cheetah
					attachElements(fly, theVehicle, -0.45, 1, 0.25)
					attachElements(gnat, theVehicle, -0.45, -0.4, 0.3)
				elseif (vModel == 480) then -- Comet
					attachElements(fly, theVehicle, -0.42, 1, 0.35)
					attachElements(gnat, theVehicle, -0.42, -0.5, 0.4)
				elseif (vModel == 562) then -- Elegy
					attachElements(fly, theVehicle, -0.52, 1, 0.4)
					attachElements(gnat, theVehicle, -0.52, -0.4, 0.45)
				elseif (vModel == 565) then -- Flash
					attachElements(fly, theVehicle, -0.48, 1, 0.35)
					attachElements(gnat, theVehicle, -0.48, -0.4, 0.4)
				elseif (vModel == 434) then -- Hotknife
					attachElements(fly, theVehicle, -0.27, 1, 0.3)
					attachElements(gnat, theVehicle, -0.27, -0.7, 0.35)
				elseif (vModel == 494) then -- Hotring
					attachElements(fly, theVehicle, -0.47, 1, 0.35)
					attachElements(gnat, theVehicle, -0.47, -0.6, 0.4)
				elseif (vModel == 502) then -- Hotring 2
					attachElements(fly, theVehicle, -0.43, 1, 0.35)
					attachElements(gnat, theVehicle, -0.43, -0.5, 0.4)
				elseif (vModel == 503) then -- Hotring 3
					attachElements(fly, theVehicle, -0.43, 1, 0.4)
					attachElements(gnat, theVehicle, -0.43, -0.7, 0.45)
				elseif (vModel == 411) then -- Infernus
					attachElements(fly, theVehicle, -0.47, 1, 0.35)
					attachElements(gnat, theVehicle, -0.47, -0.3, 0.4)
				elseif (vModel == 559) then -- Jester
					attachElements(fly, theVehicle, -0.48, 1, 0.4)
					attachElements(gnat, theVehicle, -0.48, -0.5, 0.45)
				elseif (vModel == 561) then -- Stratum
					attachElements(fly, theVehicle, -0.53, 1, 0.4)
					attachElements(gnat, theVehicle, -0.53, -0.1, 0.45)
				elseif (vModel == 560) then -- Sultan
					attachElements(fly, theVehicle, -0.5, 1, 0.45)
					attachElements(gnat, theVehicle, -0.5, -0.1, 0.5)
				elseif (vModel == 506) then -- Super GT
					attachElements(fly, theVehicle, -0.46, 1, 0.25)
					attachElements(gnat, theVehicle, -0.46, -0.6, 0.3)
				elseif (vModel == 451) then -- Turismo
					attachElements(fly, theVehicle, -0.47, 1, 0.25)
					attachElements(gnat, theVehicle, -0.47, -0.6, 0.3)
				elseif (vModel == 558) then -- Uranus
					attachElements(fly, theVehicle, -0.52, 1, 0.45)
					attachElements(gnat, theVehicle, -0.52, -0.5, 0.5)
				elseif (vModel == 555) then -- Windsor
					attachElements(fly, theVehicle, -0.45, 1, 0.25)
					attachElements(gnat, theVehicle, -0.45, -0.5, 0.35)
				elseif (vModel == 477) then -- ZR 350
					attachElements(fly, theVehicle, -0.45, 1, 0.4)
					attachElements(gnat, theVehicle, -0.45, -0.5, 0.45)
				elseif (vModel == 579) then -- Huntley
					attachElements(fly, theVehicle, -0.47, 1, 0.75)
					attachElements(gnat, theVehicle, -0.47, -0.5, 0.8)
				elseif (vModel == 400) then -- Landstalker
					attachElements(fly, theVehicle, -0.34, 1, 0.35)
					attachElements(gnat, theVehicle, -0.34, -0.25, 0.4)
				elseif (vModel == 404) then -- Perennial
					attachElements(fly, theVehicle, -0.47, 1, 0.5)
					attachElements(gnat, theVehicle, -0.47, -0.4, 0.55)
				elseif (vModel == 479) then -- Regina
					attachElements(fly, theVehicle, -0.52, 1, 0.55)
					attachElements(gnat, theVehicle, -0.52, -0.4, 0.6)
				elseif (vModel == 442) then -- Romero
					attachElements(fly, theVehicle, -0.5, 1, 0.4)
					attachElements(gnat, theVehicle, -0.5, 0, 0.5)
				elseif (vModel == 458) then -- Solair
					attachElements(fly, theVehicle, -0.46, 1, 0.3)
					attachElements(gnat, theVehicle, -0.46, -0.15, 0.35)
				end
				if isElementAttached(fly) then
					charles = addEventHandler("onClientPreRender", getRootElement(), cam)
					setElementAlpha(getLocalPlayer(), 255*visiblecock)
				else
					destroyElement(fly)
					destroyElement(gnat)
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
				fly = nil
				destroyElement(gnat)
			end
	end
addEventHandler("onClientPlayerVehicleExit", getLocalPlayer(), camStop)
addEventHandler("onClientPlayerWasted", getLocalPlayer(), camStop)


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