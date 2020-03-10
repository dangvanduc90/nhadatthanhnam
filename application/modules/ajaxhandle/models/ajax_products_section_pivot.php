<?php 
	class Ajax_products_section_pivot extends Cms_Base_model {
		function __construct() {
			parent::__construct();
		}
		public function Ajax_Update_Product_Section_Pivot() {
			$product_id = $this -> input -> post('product_id');
			$IsChecked = $this -> input -> post('IsChecked');
			$section_id = $this -> input -> post('section_id');

//			return json_encode([
//                'section_id' => $section_id,
//                'product_id' => $product_id,
//                'IsChecked' => $IsChecked
//            ]);

			if ($IsChecked) {
                $data = array(
                    'section_id' => $section_id,
                    'product_id' => $product_id,
                );
                $this -> db -> insert('sections_products_pivot',$data);

                return $this -> db -> affected_rows() > 0;
            } else {
                $this->db->delete('sections_products_pivot', array(
                    'section_id' => $section_id,
                    'product_id' => $product_id,
                ));
                return $this -> db -> affected_rows() > 0;
            }
		}
	}
?>