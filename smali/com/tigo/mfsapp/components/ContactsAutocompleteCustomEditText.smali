.class public Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;
.super Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;
.source "ContactsAutocompleteCustomEditText.java"


# instance fields
.field private contactName:Ljava/lang/String;

.field private phoneSelected:Landroid/text/Editable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setAutocompleteContacts()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->contactName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Landroid/text/Editable;)Landroid/text/Editable;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;
    .param p1, "x1"    # Landroid/text/Editable;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->phoneSelected:Landroid/text/Editable;

    return-object p1
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->contactName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneSelected()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneSelected()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 135
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneSelected()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->phoneSelected:Landroid/text/Editable;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->phoneSelected:Landroid/text/Editable;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->phoneSelected:Landroid/text/Editable;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method public setAutocompleteContacts()V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    .line 41
    .local v1, "editText":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 43
    new-instance v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "contactsAdapter":Lcom/tigo/mfsapp/adapters/ContactsAdapter;
    new-instance v2, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$1;-><init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)V

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->loadContacts(Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance v2, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;

    invoke-direct {v2, p0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$2;-><init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    .end local v0    # "contactsAdapter":Lcom/tigo/mfsapp/adapters/ContactsAdapter;
    :cond_0
    new-instance v2, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;-><init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)V

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setOnBrowseListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public setContactName(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactName"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->contactName:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPhoneSelected(Landroid/text/Editable;)V
    .locals 0
    .param p1, "phoneSelected"    # Landroid/text/Editable;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->phoneSelected:Landroid/text/Editable;

    .line 126
    return-void
.end method
