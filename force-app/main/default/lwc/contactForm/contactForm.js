import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import CONTACT_OBJECT from '@salesforce/schema/Contact';
import NAME_FIELD from '@salesforce/schema/Contact.Name';
import MAILINGADDRESS_FIELD from '@salesforce/schema/Contact.MailingAddress';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';
export default class ContactForm extends LightningElement {
    objectApiName = CONTACT_OBJECT;
    fields = [NAME_FIELD, MAILINGADDRESS_FIELD, PHONE_FIELD, EMAIL_FIELD];
    showSuccessToast(event) {
        this.dispatchEvent(
            new ShowToastEvent({
                title: 'Success',
                message: 'Contact record has been created',
                variant: 'success',
            }),
        );
    }
}