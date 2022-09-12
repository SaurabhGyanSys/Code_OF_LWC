/*public class parentToChildHandler {
        public static void parentToChildMethod(List<Account> newAcc) {
            List<Contact> conList = new List<Contact>();
            Set<Id> setid = new Set<Id>();
            for(Account acc: newAcc){
                setid.add(acc.Id);
            }
            List<Contact> ContactList = [SELECT Id, Phone, Account.Phone FROM Contact where accountId In :setid];
            // for(Account A:Aquery){
            //     for(Contact con:A.Contacts){    
            //         con.Phone = A.Phone;
            //         conList.add(con);
            //     }
            // }

            for(Contact con : ContactList){
                con.Phone = con.Account.Phone;
                conList.add(con);
            }
            
            update conList;
        }
}*/

public class parentToChildHandler {
    Public static void modified(List<Account> Aquery, map<Id, Account> accMap){
           List<Contact> ContactList = [SELECT Id, Phone, Account.Phone FROM Contact where accountId=:accMap.keyset()];
            for(Contact con : ContactList){
                con.Phone = con.Account.Phone;

            }
        if(!ContactList.isEmpty()){
            update ContactList;
            }
        }

    }