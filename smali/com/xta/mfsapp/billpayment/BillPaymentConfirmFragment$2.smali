.class Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;
.super Ljava/lang/Object;
.source "BillPaymentConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->getFavoriteComment()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "favoriteComment":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    new-instance v0, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/model/Company;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$500(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$600(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .local v0, "newFavorite":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "BILL_PAYMENT_FAVORITE"

    new-instance v4, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2$1;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tigo/mfsapp/utils/FavoriteManager;->savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 249
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->dismiss()V

    .line 250
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->closeAndGoHome()V

    .line 255
    .end local v0    # "newFavorite":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setEditTextError()V

    goto :goto_0
.end method
