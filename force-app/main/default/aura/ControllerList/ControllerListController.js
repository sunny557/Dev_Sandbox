({
	doInit : function(component, event, helper) {
		/* Step 1*/
        var action = component.get('c.getContactList');    /*getContactList is the method name form the class*/
        /* Optional / Step 2 */
        action.setParams({
            accountId : component.get('v.recordId'),
        });
        /*Step 4*/
        action.setCallback(this, function(response){
            var responseValue = response.getReturnValue();
            console.log('responseValue ', responseValue);
            component.set('v.contactList ', responseValue);
    });
        /*Step 3*/
        $A.enqueueAction(action, false);
	},
    doRedirect : function(component, event, helper) {
        var eventSource = event.getSource();
        var id= eventSource.get('v.name');
        alert(id);
        
        var navEvt = $A.get("e.force:navigateToSobject");
        navEvt.setParams({
            "recordId" : id,
            "slideDevName" : "detail"
        }),
            navEvt.fire();
    },
})