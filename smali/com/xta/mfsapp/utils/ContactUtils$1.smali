.class final Lcom/tigo/mfsapp/utils/ContactUtils$1;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/utils/ContactUtils;->asyncGetContactData(Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/ContactUtils$1;->val$listener:Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/tigo/mfsapp/utils/ContactUtils;->getContactData()Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    .local v0, "contactData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    invoke-static {}, Lcom/tigo/mfsapp/utils/ContactUtils;->access$000()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;

    invoke-direct {v2, p0, v0}, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;-><init>(Lcom/tigo/mfsapp/utils/ContactUtils$1;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void
.end method
