.class Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment;Landroid/widget/ListView;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

.field final synthetic val$this$0:Lcom/tigo/mfsapp/common/ContactListFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Lcom/tigo/mfsapp/common/ContactListFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    iput-object p2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->val$this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$202(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 177
    invoke-static {}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->getUnfilteredContactData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 179
    .local v3, "size":I
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 181
    invoke-static {}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->getUnfilteredContactData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Contact;

    .line 184
    .local v1, "s":Lcom/tigo/mfsapp/model/Contact;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Contact;->getContactName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "ch":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 188
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$200(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 189
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$200(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "ch":Ljava/lang/String;
    .end local v1    # "s":Lcom/tigo/mfsapp/model/Contact;
    :cond_1
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$200(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 195
    .local v2, "sectionLetters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$302(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 197
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$300(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 199
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    iget-object v6, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$300(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$402(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;[Ljava/lang/String;)[Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$300(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$400(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 203
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->buildIndexView()V

    .line 204
    iget-object v5, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    iget-object v5, v5, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/common/ContactListFragment;->hideProgressDialog()V

    .line 205
    return-void
.end method
