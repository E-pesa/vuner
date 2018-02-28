.class Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;
.super Landroid/os/AsyncTask;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptedStorge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAllTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

.field final synthetic this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

.field private final valueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/util/ArrayList;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 2
    .param p2, "id"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 363
    .local p3, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 364
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call this task from outside the UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->id:Ljava/lang/String;

    .line 370
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->valueList:Ljava/util/ArrayList;

    .line 371
    iput-object p4, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    .line 372
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->valueList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->SaveAll(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 383
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onSuccess(Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    invoke-interface {v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onFail()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 356
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
