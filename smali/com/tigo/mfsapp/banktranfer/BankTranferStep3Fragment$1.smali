.class Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;
.super Ljava/lang/Object;
.source "BankTranferStep3Fragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 107
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$002(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 108
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setEnableInput(Z)V

    .line 109
    return-void
.end method
