/**
 * @file Plugin for inserting Joomla 3 list elements
 */
		CKEDITOR.plugins.add( 'lists',
		{
				requires  : [ 'fakeobjects', 'htmldataprocessor' ],
				init : function( editor )
				{

						// Register the toolbar buttons.
						editor.ui.addButton( 'ListButton',
						{
								label : 'Insert A List',
								icon : this.path + 'images/readmoreButton.gif',
								command : 'lists'
						});
						editor.addCommand( 'lists',
						{
								exec : function()
								{

										insertComment( 'lists' );
								}
						} );

						function insertComment( text )
						{
							editor.insertHtml('<ul class="list-icon circle-arrow' + text +'" />');
						}
				}
		});
