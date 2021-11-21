({
	getopp : function(cmp) {
		var action =cmp.get("c.getopportunities");
        action.setCallback(this,function(response){
      		var state = response.getState();
            if(state==="Success"){
                //debugger
                cmp.set("v.opportunities", response.getReturnValue());
            }
      });
        $A.enqueueAction(action);
	}
})