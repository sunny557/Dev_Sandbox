({
	doinit : function(cmp, event) {
		var action = cmp.get("c.findAll");
        action.setCallback(this,function(a)
                           {
                               cmp.set("v.contacts",a.getReturnValue());
                           });
        $A.enqueueAction(action);
	},
    searchKeyChange: function(cmp, event) {
        var searchKey=event.getParam("searchKey");
        debugger
		var action = cmp.get("c.findByName");
        action.setParams({
            "searchKey":searchKey
        });
        action.setCallback(this,function(a)
                           {
                               cmp.set("v.contacts",a.getReturnValue());
                           });
        $A.enqueueAction(action);
	},
})