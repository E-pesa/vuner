.class Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;
.super Landroid/os/AsyncTask;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptedStorge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<+",
        "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;

.field private final objClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/lang/Class;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V
    .locals 2
    .param p2, "id"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 436
    .local p3, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 437
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call this task from outside the UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_0
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->id:Ljava/lang/String;

    .line 443
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->objClass:Ljava/lang/Class;

    .line 444
    iput-object p4, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;

    .line 445
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 429
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->objClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->LoadAll(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 429
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;

    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;->onSuccess(Ljava/util/ArrayList;)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;

    invoke-interface {v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;->onFail()V

    goto :goto_0
.end method
