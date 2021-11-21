({
	myAction : function(component, event, helper) {
		var action = component.get('c.createContact');
        var contc = component.get('v.CreateContact');
        if(contc.FirstName == null || contc.FirstName === '' ||contc.FirstName === undefined){
            alert('Please Input First Name');
            return;
        }
        action.setParams({
            con : component.get('v.CreateContact'),
            AccountId : component.get('v.accountId')
        });
        action.setCallback(this, function(response){
            var state = response.getState();
            alert(state);
            if(state === 'SUCCESS' || state === 'DRAFT'){
                var responseValue = response.getReturnValue();
            }else if(state == 'INCOMPLETE'){
                
            }else if(state == 'ERROR'){
                var errors = response.getError();
                console.log('Error ',errors.duplicateResults)
                console.log('Error ',errors.fieldErrors)
                console.log('Error ',errors.pageErrors);
                if(errors || errors[0].message){
                    
                }
            }
        },'ALL');
        $A.enqueueAction(action);
	}
})