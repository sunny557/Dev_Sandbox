public virtual class CarManufacture {
    public void engine(){
        system.debug('engine has been Manifactured');
    }
    
    public void ac(){
        system.debug('ac has been Manifactured');
    }
    
    public virtual void tyres(){
        system.debug('Tyres has been Manifactured');
    }
   
    //Virtual keyword is used to provide access to overide the Methos in the child class
    public virtual void speed(){
        system.debug('The speed should not cross 80 kms per hour');
    }
    

    
    //we use abstract method becaus we doesn't know the implementation now by we would need this for implementation--> Logic without Implementation
    public virtual void sensors(){
        system.debug('Sensors New');
    }
}