public class SpeakerControllerExtension 
{
    public blob picture {get; set;}
    public string errorMessage {get; set;}
    
    private final Speaker__c speaker;
    private ApexPages.StandardController stdController;
    
    public SpeakerControllerExtension(ApexPages.StandardController stdController){
        this.speaker = (Speaker__c)stdController.getRecord();
        this.stdController = stdController;
    }
    Public PageReference save(){
        errorMessage = '';
        try{
           upsert speaker; 
            if(Picture != null) {
                Attachment attachment = new Attachment();
                attachment.body = Picture;
                attachment.name = 'Speaker_' +speaker.Id + '.jpg';
                attachment.Parentid = speaker.id;
                attachment.ContentType = 'application/jpg';
                insert attachment;
                speaker.Picturepath__c='/servlet/servlet.FileDownload?file=' +attachment.id;
                update speaker;
            }
            return new ApexPages.StandardController(speaker).view();            
        }catch(System.Exception ex){
            errorMessage = ex.getMessage();
            return null;
        }
    }
}