function openTab(text, url, iconCls){
    if($("#tabs").tabs("exists",text)){
        $("#tabs").tabs("select",text);
    }else{
    	var content="<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='" + url + "'></iframe>";
        $("#tabs").tabs("add",{
            title:text,
            iconCls:iconCls,
            closable:true,
            content:content
        });
    }
}
$(
function(){
		$("#v1").click(function(){
			var id=$(this).children("span").attr("id");
			
			play(id);
		});
		$("#v2").click(function(){
			var id=$(this).children("span").attr("id");
			
			play(id);
		});
		$("#v3").click(function(){
			var id=$(this).children("span").attr("id");
			
			play(id);
		});
		$("#v4").click(function(){
			var id=$(this).children("span").attr("id");
			
			play(id);
		});
	}	
)
function play(id){
	 window.location.href="video/videoPlayer.do?id="+id
}