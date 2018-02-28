.class Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;
.super Ljava/lang/Object;
.source "ContactsAutocompleteCustomEditText.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

.field final synthetic val$contactListDialog:Lcom/tigo/mfsapp/common/ContactListDialog;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;Lcom/tigo/mfsapp/common/ContactListDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->this$1:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    iput-object p2, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->val$contactListDialog:Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onSelectedContact(Lcom/tigo/mfsapp/model/Contact;)V
    .locals 3
    .param p1, "contact"    # Lcom/tigo/mfsapp/model/Contact;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->this$1:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Contact;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->this$1:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Contact;->getContactPhone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setPhoneSelected(Landroid/text/Editable;)V

    .line 95
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->this$1:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Contact;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setContactName(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;->val$contactListDialog:Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/ContactListDialog;->dismiss()V

    .line 97
    return-void
.end method
