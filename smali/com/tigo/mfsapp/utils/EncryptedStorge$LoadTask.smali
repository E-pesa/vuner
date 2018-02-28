.class Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;
.super Landroid/os/AsyncTask;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptedStorge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

.field final synthetic this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 2
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 400
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call this task from outside the UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->id:Ljava/lang/String;

    .line 406
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    .line 407
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 393
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->id:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onSuccess(Ljava/lang/String;)V

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    invoke-interface {v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onFail()V

    goto :goto_0
.end method
