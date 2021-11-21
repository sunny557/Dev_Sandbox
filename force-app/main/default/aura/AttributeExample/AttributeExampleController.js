({
	doclick : function(component, event, helper) {
		alert(component.isValid());
        alert(component.getName());
        alert(component.get('v.Whom'));
        component.set('v.Whom' , "Test Value");
        var ageComp = component.find('testInput');
        alert(agecomp.get('v.value'));
       agecomp.set('v.value',68);
        // 2 parameters
        // // key -Attribute or 
        // // Value - That we wanted to be set  in the attribute 
	}
})