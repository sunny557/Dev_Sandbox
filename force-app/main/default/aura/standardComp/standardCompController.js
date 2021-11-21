({
	getNumbers : function(component) {
		var Listofnum=[];
        for (var i=0;i<=10;i++)
        {
            Listofnum.push({value:i})
        }
        component.set("v.numbers", Listofnum);
	}
})