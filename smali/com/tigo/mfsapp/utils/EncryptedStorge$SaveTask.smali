.class Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;
.super Landroid/os/AsyncTask;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptedStorge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTask"
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

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 2
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 327
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call this task from outside the UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->id:Ljava/lang/String;

    .line 333
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->value:Ljava/lang/String;

    .line 334
    iput-object p4, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    .line 335
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onSuccess(Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->listener:Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;

    invoke-interface {v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;->onFail()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 319
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
