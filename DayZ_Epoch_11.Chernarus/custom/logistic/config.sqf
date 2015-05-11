
LOG_CFG_lANG = "en"; 				/*  en = english , de = german , fr = french  */
LOG_CFG_ALLOW_LOCKED = false;	 	/* allow to transport locked vehicles */
LOG_CFG_ALLOW_CHAINING = false; 	/* allow chain towing  */
LOG_CFG_ALLOW_GETIN = false; 		/* allow player to get into a towed / lifted object  */


/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE CAN TOW
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_CANTOW=["LandVehicle","Ship"];



/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE IS TOWABLE
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_ISTOWABLE=["LandVehicle","Ship"];




/*--------------------------------------------------------------------------------------------------------------
	LIST OF HELIS WHERE CAN LIFT
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_CANLIFT=["Air"];




/*--------------------------------------------------------------------------------------------------------------
		LIST OF VEHICLES WHERE IS LIFTABLE
---------------------------------------------------------------------------------------------------------------*/ 

LOG_CFG_ISLIFTABLE=["Air","LandVehicle","Ship","TKOrdnanceBox_EP1","USVehicleBox","USBasicAmmunitionBox","USLaunchersBox","USBasicWeaponsBox","RULaunchersBox"];
