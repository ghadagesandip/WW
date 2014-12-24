<?php

class FileUploadComponent extends Component {


    public function uploadFile($filedata, $path){


        if(isset($filedata['tmp_name']) && !empty($filedata['tmp_name']))
        {
           $filename = $this->generateUniqueFilename($filedata['name']);
            if(!$filename){
                return false;
            }
            if(move_uploaded_file($filedata['tmp_name'], $path.$filename)){
                return $filename;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }



    }



    function generateUniqueFilename($fileName){
        $pathParts = pathinfo($fileName);
        $ext = $pathParts['extension'];
        if(in_array($ext,array('png','jpg','jpeg','gif'))){
            $new_name = trim(substr(md5(microtime()), 2, -5));
            return $fileName = $new_name.'.'.$ext;
        }else{
            return false;
        }

    }

}
