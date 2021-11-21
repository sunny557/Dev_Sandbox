({
    getInput: function(cmp, event) {
		var fullName = cmp.find("name").get("v.value");
        var outline = cmp.find("nameOutput");
        OutName.set("v.value", fullName);
	}
})