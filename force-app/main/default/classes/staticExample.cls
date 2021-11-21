public with sharing class staticExample {
    public staticExample() {

    }
    // If we are  using static method we can call the metho directly we dont need any instance
    public static void helloMe()
    {
        system.debug('I am static Method');
    }
    //If we are not using static method and we nee to call the mthod we need to instanciate and call the method as its not a static method. 
    public void helloYou()
    {
        system.debug('I am a Non-Static Method');
    }
}