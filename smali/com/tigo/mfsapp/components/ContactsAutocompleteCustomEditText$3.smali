.class Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;
.super Ljava/lang/Object;
.source "ContactsAutocompleteCustomEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setAutocompleteContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v3, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 78
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-direct {v0}, Lcom/tigo/mfsapp/common/ContactListDialog;-><init>()V

    .line 80
    .local v0, "contactListDialog":Lcom/tigo/mfsapp/common/ContactListDialog;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .local v1, "currentapiVersion":I
    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    .line 84
    const/4 v3, 0x0

    const v4, 0x7f0b0085

    invoke-virtual {v0, v3, v4}, Lcom/tigo/mfsapp/common/ContactListDialog;->setStyle(II)V

    .line 88
    :cond_0
    new-instance v3, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;

    invoke-direct {v3, p0, v0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3$1;-><init>(Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$3;Lcom/tigo/mfsapp/common/ContactListDialog;)V

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/common/ContactListDialog;->setOnContactListListener(Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/common/ContactListDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 108
    return-void
.end method
