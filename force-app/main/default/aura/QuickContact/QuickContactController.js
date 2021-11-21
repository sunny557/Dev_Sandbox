({
	searchKeyChange : function(component, event, helper) 
    {
		var myEvent = $A.get("searchKeyChange")	;
        myEvent.setParams({"searchKey":event.target.value});
        myEvent.fire();
	}
})