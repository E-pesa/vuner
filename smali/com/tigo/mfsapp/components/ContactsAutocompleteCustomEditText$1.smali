.class Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$1;
.super Ljava/lang/Object;
.source "ContactsAutocompleteCustomEditText.java"

# interfaces
.implements Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;


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
    .line 46
    iput-object p1, p0, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText$1;->this$0:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
