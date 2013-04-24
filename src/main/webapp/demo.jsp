<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>demo preview</title>
<link rel="stylesheet" href="static/dojolib/dijit/themes/claro/document.css"/>
<link rel="stylesheet" href="static/dojolib/dijit/themes/claro/claro.css"/>
<link rel="stylesheet" href="static/css/demo.css"/>
<script type="text/javascript" src="static/dojolib/dojo/dojo.js"
		data-dojo-config="parseOnLoad: false, async:true"></script>
<script type="text/javascript" src="static/js/src2.js"></script>
</head>
<body class="claro">
	<!-- basic preloader: -->
	<div id="loader"><div id="loaderInner" style="direction:ltr;white-space:nowrap;overflow:visible;">Loading ... </div></div>

	<div data-dojo-type="dijit.Menu" id="submenu1" data-dojo-props='contextMenuForWindow:true, style:"display:none"' style="display: none;">
		<div data-dojo-type="dijit.MenuItem">Enabled Item</div>
		<div data-dojo-type="dijit.MenuItem" data-dojo-props="disabled:true">Disabled Item</div>
		<div data-dojo-type="dijit.MenuSeparator"></div>
		<div data-dojo-type="dijit.MenuItem" data-dojo-props="iconClass:'dijitIconCut'">Cut</div>
		<div data-dojo-type="dijit.MenuItem" data-dojo-props="iconClass:'dijitIconCopy'">Copy</div>
		<div data-dojo-type="dijit.MenuItem" data-dojo-props="iconClass:'dijitIconPaste'">Paste</div>
		<div data-dojo-type="dijit.MenuSeparator"></div>
		<div data-dojo-type="dijit.PopupMenuItem">
			<span>Enabled Submenu</span>
			<div data-dojo-type="dijit.Menu" id="submenu2">
				<div data-dojo-type="dijit.MenuItem">Submenu Item One</div>
				<div data-dojo-type="dijit.MenuItem">Submenu Item Two</div>
				<div data-dojo-type="dijit.PopupMenuItem">
					<span>Deeper Submenu</span>
					<div data-dojo-type="dijit.Menu" id="submenu4">
						<div data-dojo-type="dijit.MenuItem">Sub-sub-menu Item One</div>
						<div data-dojo-type="dijit.MenuItem">Sub-sub-menu Item Two</div>
					</div>
				</div>
			</div>
		</div>
		<div data-dojo-type="dijit.PopupMenuItem" data-dojo-props="disabled:true">
			<span>Disabled Submenu</span>
			<div data-dojo-type="dijit.Menu" id="submenu3" style="display: none;">
				<div data-dojo-type="dijit.MenuItem">Submenu Item One</div>
				<div data-dojo-type="dijit.MenuItem">Submenu Item Two</div>
			</div>
		</div>
		
	</div>
	<!-- end contextMenu -->

	<div id="main" data-dojo-type="dijit.layout.BorderContainer" data-dojo-props="liveSplitters:false, design:'sidebar'">

		<div id="header" data-dojo-type="dijit.MenuBar" data-dojo-props="region:'top'">
			<div data-dojo-type="dijit.PopupMenuBarItem" id="edit">
				<span>Edit</span>
				<div data-dojo-type="dijit.Menu" id="editMenu">
					<div data-dojo-type="dijit.MenuItem" id="cut" data-dojo-props="
						iconClass:'dijitIconCut'
					">Cut</div>
					<div data-dojo-type="dijit.MenuItem" id="copy" data-dojo-props="
						iconClass:'dijitIconCopy'
					">Copy</div>
					<div data-dojo-type="dijit.MenuItem" id="paste" data-dojo-props="iconClass:'dijitIconPaste'">Paste</div>
					<div data-dojo-type="dijit.MenuSeparator" id="separator"></div>
					<div data-dojo-type="dijit.MenuItem" id="undo" data-dojo-props="iconClass:'dijitIconUndo'">Undo</div>
				</div>
			</div>
			
	
		
		
			<div data-dojo-type="dijit.PopupMenuBarItem" id="help">
				<span>Help</span>
				<div data-dojo-type="dijit.Menu" id="helpMenu">
					<div data-dojo-type="dijit.MenuItem">Help Topics</div>
					<div data-dojo-type="dijit.MenuItem">About Dijit</div>
				</div>
			</div>
		
		</div>

		<div data-dojo-type="dijit.layout.AccordionContainer" data-dojo-props="region:'leading', splitter:true, minSize:20"
			style="width: 300px;" id="leftAccordion">


			<div data-dojo-type="dijit.layout.ContentPane" data-dojo-props='title:"Tree"'>
				<!-- tree widget -->
				<div data-dojo-type="dijit.Tree" 
					data-dojo-props="model: continentModel, query:{ type:'continent'}, label:'Continents', openOnClick:true"
				></div>
			</div>

			<div data-dojo-type="dijit.layout.ContentPane" data-dojo-props="title:'Rootless Tree'">
				<div id="rootlessTree" data-dojo-type="dijit.Tree" data-dojo-props="
					model:continentModel,
					query:{ type:'continent' },
					showRoot: false,
					openOnClick:true
				"></div>
			</div>

		

		</div>
		<!-- end left AccordionContainer -->
			<div data-dojo-type="dijit.layout.AccordionContainer" data-dojo-props="region:'trailing', splitter:true, minSize:20"
			style="width: 300px;" id="rightAccordion">


			<div data-dojo-type="dijit.layout.ContentPane" data-dojo-props='title:"Tree"'>
				<!-- tree widget -->
				<div data-dojo-type="dijit.Tree" 
					data-dojo-props="model: continentModel, query:{ type:'continent'}, label:'Continents', openOnClick:true"
				></div>
			</div>

			<div data-dojo-type="dijit.layout.ContentPane" data-dojo-props="title:'Rootless Tree'">
				<div id="rootlessTree1" data-dojo-type="dijit.Tree" data-dojo-props="
					model:continentModel,
					query:{ type:'continent' },
					showRoot: false,
					openOnClick:true
				"></div>
			</div>

		

		</div>
		<!-- end right AccordionContainer -->

		<!-- top tabs (marked as "center" to take up the main part of the BorderContainer) -->
		<div data-dojo-type="dijit.layout.TabContainer" data-dojo-props="region:'center', tabStrip:true" id="topTabs">


			<div id="editorTab" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='title:"Editor", style:"padding:10px;"'>
				<p>Enabled:</p>
				<!-- FIXME:
					set height on this node to size the whole editor, but causes the tab to not scroll
					until you select another tab and come back. alternative is no height: here, but that
					causes editor to become VERY tall, and size to a normal height when selected (like the
					dijit.form.TextArea in "Form Feel" Tab), but in reverse. refs #3980 and is maybe new bug?
				-->
				<div data-dojo-type="dijit.Editor" data-dojo-props="height:175, extraPlugins:['|', 'createLink', 'fontName'], styleSheets:'../../dijit/themes/claro/document.css'">
					<ul>
						<li>Lorem <a href="http://dojotoolkit.org">and a link</a>, what do you think?</li>
						<li>This is the Editor with a Toolbar attached.</li>
					</ul>
				</div>
				<p>Disabled:</p>
				<div data-dojo-type="dijit.Editor" data-dojo-props="height:175, extraPlugins:['|', 'createLink', 'fontName'], styleSheets:'../../dijit/themes/claro/document.css', disabled:true">
					<ul>
						<li>Lorem <a href="http://dojotoolkit.org">and a link</a>, what do you think?</li>
						<li>This is the Editor with a Toolbar attached.</li>
					</ul>
				</div>
			</div><!-- end of Editor tab -->


		<div id="closableTab" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='title:"Closable", 
				style:"display:none; padding:10px;", closable:true'>
				This pane is closable, just for the icon ...
			</div>
		</div><!-- end of region="center" TabContainer -->

		<!-- bottom right tabs -->
		<div data-dojo-type="dijit.layout.TabContainer" id="bottomTabs"
			data-dojo-props="
				tabPosition:'bottom', selectedchild:'btab1', region:'bottom',
				splitter:true, tabStrip:true
			">
			<!-- btab 1 -->
			<div id="btab1" data-dojo-type="dijit.layout.ContentPane" data-dojo-props='title:"Info", style:" padding:10px; "'>
				<p>You can explore this single page after applying a Theme
				for use in creation of your own theme.</p>

				<p>There is a right-click [context] pop-up menu here, as well.</p>
			</div><!-- end:info btab1 -->

			

		</div><!-- end Bottom TabContainer -->

	</div><!-- end of BorderContainer -->

	<!-- dialog in body -->
	
</body>
</html>