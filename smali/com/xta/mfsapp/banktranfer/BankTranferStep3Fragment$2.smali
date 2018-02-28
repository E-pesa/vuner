.class Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;
.super Ljava/lang/Object;
.source "BankTranferStep3Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 119
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->getFavoriteComment()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "favoriteComment":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    new-instance v0, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$200(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/adapters/BankInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$200(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/adapters/BankInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$300(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$400(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v0, "newFavorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$000(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$000(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "BANK_TRANSFER_FAVORITE"

    new-instance v5, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2$1;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/tigo/mfsapp/utils/FavoriteManager;->savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 146
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->dismiss()V

    .line 147
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->closeAndGoHome()V

    .line 153
    .end local v0    # "newFavorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setEditTextError()V

    goto :goto_0
.end method
