CKEDITOR.plugins.add('readmore',   //name of our plugin
{    
    

    init:function(a) {
	  var b="readmore";
	  //var c=a.addCommand(b,new CKEDITOR.dialogCommand(b));
	  //c.modes={wysiwyg:1,source:1}; //Enable our plugin in both modes
	  //c.canUndo=true;
	
	  //add new button to the editor
	  a.ui.addButton("showtime",
	  {
	   label:'Read More',
	   command:b,
	   icon:this.path+"readmore.gif",
	   html:'<a href="http://www.google.com">Search something</a>'
	  });
	  
	 
  //CKEDITOR.dialog.add(b,this.path+"dialogs/ab.js") //path of our dialog file
 },
 
 	
});


/*(function(){

//Section 1 : Code to execute when the toolbar button is pressed
var a= {
exec:function(editor){
 var theSelectedText = editor.getSelection().getNative();
 alert(theSelectedText);
}
},

//Section 2 : Create the button and add the functionality to it
b='addTags';
CKEDITOR.plugins.add(b,{
init:function(editor){
editor.addCommand(b,a);
editor.ui.addButton("addTags",{
    label:'Add Tag', 
    icon:this.path+"addTag.gif",
    command:b
    });
}
}); 
})();*/