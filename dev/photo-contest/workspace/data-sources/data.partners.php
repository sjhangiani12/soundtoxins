<?php

	require_once(TOOLKIT . '/class.datasource.php');

	Class datasourcepartners extends Datasource{

		public $dsParamROOTELEMENT = 'partners';
		public $dsParamORDER = 'asc';
		public $dsParamGROUP = '26';
		public $dsParamPAGINATERESULTS = 'yes';
		public $dsParamLIMIT = '30';
		public $dsParamSTARTPAGE = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamPARAMOUTPUT = 'category';
		public $dsParamSORT = 'name';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';

		public $dsParamFILTERS = array(
				'26' => '{$category}',
		);

		public $dsParamINCLUDEDELEMENTS = array(
				'name',
				'category',
				'website',
				'description: formatted',
				'participants',
				'image'
		);


		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}

		public function about(){
			return array(
				'name' => 'Partners',
				'author' => array(
					'name' => 'Justin Peters',
					'website' => 'http://188.40.158.99/soundtoxins',
					'email' => 'justin.peters@noaa.gov'),
				'version' => 'Symphony 2.2.5',
				'release-date' => '2012-05-25T21:45:18+00:00'
			);
		}

		public function getSource(){
			return '7';
		}

		public function allowEditorToParse(){
			return true;
		}

		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);

			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}

			if($this->_force_empty_result) $result = $this->emptyXMLSet();

			

			return $result;
		}

	}
