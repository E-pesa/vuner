.class Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;
.super Ljava/lang/Object;
.source "BankTranferFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    const v2, 0x7f06015a

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
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
    .line 54
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->access$002(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V

    .line 56
    return-void
.end method
