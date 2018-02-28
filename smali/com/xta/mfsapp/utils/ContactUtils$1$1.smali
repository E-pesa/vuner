.class Lcom/tigo/mfsapp/utils/ContactUtils$1$1;
.super Ljava/lang/Object;
.source "ContactUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/utils/ContactUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/utils/ContactUtils$1;

.field final synthetic val$contactData:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/utils/ContactUtils$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/utils/ContactUtils$1;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;->this$0:Lcom/tigo/mfsapp/utils/ContactUtils$1;

    iput-object p2, p0, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;->val$contactData:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;->this$0:Lcom/tigo/mfsapp/utils/ContactUtils$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/utils/ContactUtils$1;->val$listener:Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/ContactUtils$1$1;->val$contactData:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;->onComplete(Ljava/util/ArrayList;)V

    .line 136
    return-void
.end method
