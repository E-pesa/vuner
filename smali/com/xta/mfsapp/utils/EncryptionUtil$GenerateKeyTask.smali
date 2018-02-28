.class Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;
.super Landroid/os/AsyncTask;
.source "EncryptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenerateKeyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljavax/crypto/SecretKey;",
        ">;"
    }
.end annotation


# instance fields
.field private final listener:Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;

.field private final passphraseOrPin:[C

.field private final salt:[B

.field final synthetic this$0:Lcom/tigo/mfsapp/utils/EncryptionUtil;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/EncryptionUtil;[C[BLcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;)V
    .locals 2
    .param p2, "passphraseOrPin"    # [C
    .param p3, "salt"    # [B
    .param p4, "listener"    # Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptionUtil;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 180
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call this task from outside the UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->passphraseOrPin:[C

    .line 186
    iput-object p4, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->listener:Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;

    .line 187
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->salt:[B

    .line 188
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->doInBackground([Ljava/lang/Void;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->this$0:Lcom/tigo/mfsapp/utils/EncryptionUtil;

    iget-object v1, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->passphraseOrPin:[C

    iget-object v2, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->salt:[B

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->generateKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    check-cast p1, Ljavax/crypto/SecretKey;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->onPostExecute(Ljavax/crypto/SecretKey;)V

    return-void
.end method

.method protected onPostExecute(Ljavax/crypto/SecretKey;)V
    .locals 1
    .param p1, "key"    # Ljavax/crypto/SecretKey;

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->listener:Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;

    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;->onSuccess(Ljavax/crypto/SecretKey;)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->listener:Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;

    invoke-interface {v0}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;->onFail()V

    goto :goto_0
.end method
