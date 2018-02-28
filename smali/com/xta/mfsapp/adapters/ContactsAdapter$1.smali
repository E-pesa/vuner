.class Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;
.super Ljava/lang/Object;
.source "ContactsAdapter.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/ContactsAdapter;->loadContacts(Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

.field final synthetic val$listener:Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;->val$listener:Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "contactData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    invoke-static {p1}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 160
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 162
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;->val$listener:Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;->onLoadComplete()V

    .line 163
    return-void
.end method
