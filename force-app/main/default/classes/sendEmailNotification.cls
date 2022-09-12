global class sendEmailNotification implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc) {
        return Database.getQueryLocator([Select id, name, FirstName,LastName, email from contact Where CreatedDate = TODAY] );
    }
    global void execute(Database.BatchableContext bc, List<Contact> scope){
         List<Messaging.SingleEmailMessage> lstEmail = new List<Messaging.SingleEmailMessage>();

        for(Contact a : scope)
        {
            string[] allemail = new string[]{a.Email};
            Messaging.SingleEmailMessage mail1=new Messaging.SingleEmailMessage();
            mail1.setToAddresses(allemail);
            mail1.setSubject('from Salesforce');
            mail1.setPlainTextBody('Hello '+a.FirstName+'\n'+'Welcome to Salesforce \n Thank you \n Saurabh Dixit');
            lstEmail.add(mail1);
        }
        Messaging.SendEmail(lstEmail);
    }    
    global void finish(Database.BatchableContext bc){
        
    }   
    
}