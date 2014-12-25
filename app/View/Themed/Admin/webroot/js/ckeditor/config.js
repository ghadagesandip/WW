/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

//var editor = CKEDITOR.replace( 'editor1' );
//CKFinder.setupCKEditor( editor, '/ckfinder/' );

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	
	 //config.uiColor = '#AADC6E';
	
	 config.toolbar = 'Full';

     config.allowedContent = true;

	 /*config.toolbar_Full =
	 [
	  
	  { name: 'bibliography', items : [ 'showtime' ] }
	 ];*/
	
	config.extraPlugins = 'filebrowser,htmlbuttons';
	//config.filebrowserUploadUrl = 'ckupload.php';
	config.filebrowserUploadUrl = 'http://localhost/ci/kokuyo/design/ckeditor/ckupload.php';
	
	
	/* CKEDITOR.replace( 'editor1',
	{
		filebrowserBrowseUrl : '/ckfinder/ckfinder.html',
		filebrowserImageBrowseUrl : '/ckfinder/ckfinder.html?type=Images',
		filebrowserFlashBrowseUrl : '/ckfinder/ckfinder.html?type=Flash',
		filebrowserUploadUrl : '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
		filebrowserImageUploadUrl : '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
		filebrowserFlashUploadUrl : '/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
	});*/
	
	
	config.htmlbuttons = [
		{
			name:'button1',
			icon:'readmore.gif',
			html:'<!--More-->',
			title:'Read More'
		}
	];
	
	config.toolbar_Basic = [['button1']];
    config.enterMode = CKEDITOR.ENTER_BR;
    config.shiftEnterMode = CKEDITOR.ENTER_P;

};
