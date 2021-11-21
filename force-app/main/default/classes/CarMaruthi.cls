public virtual class CarMaruthi extends Carmanufacture {
	
    public override void sensors(){
        system.debug('Sensors has been manufactured');
    }
    //Abstract class
    public  Virtual override void speed(){
        system.debug('Speed of the card should not cross 100kms per hour');
    }
    
    public virtual override void tyres(){
        system.debug('speed of th car should be more than 100kms per hour');
    }
}