<?php

	class oxviewconfig_mindestbestellmenge extends oxviewconfig_mindestbestellmenge_parent
	{

	

		public function getMindestbestellmenge()
		{
			return oxRegistry::getConfig()->getConfigParam("ecs_mindestbestellmenge");
		}

	}