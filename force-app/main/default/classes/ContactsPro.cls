public with sharing class ContactsPro {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(String searchText){
        searchText = '%'+searchText+'%';
        return [Select Id,Name,ImageUrl__c,Email,Phone,Title from Contact where Name LIKE:searchText];        
    }
}
