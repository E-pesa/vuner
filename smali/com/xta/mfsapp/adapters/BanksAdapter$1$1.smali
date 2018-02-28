.class Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;
.super Ljava/lang/Object;
.source "BanksAdapter.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 6
    .param p1, "yes"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_4

    .line 117
    iget-object v3, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    iget-object v3, v3, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/adapters/BankInfo;->setIsFavorite(Ljava/lang/Boolean;)V

    .line 119
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 122
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    iget-object v4, v4, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v2, "newFavorites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;>;"
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 127
    .local v0, "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$200()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    .line 129
    .local v1, "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->isEqualToBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 131
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    .end local v1    # "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v3

    const-string v4, "BANK_TRANSFER_FAVORITE"

    new-instance v5, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;

    invoke-direct {v5, p0, v2}, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/tigo/mfsapp/utils/FavoriteManager;->savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 159
    .end local v2    # "newFavorites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;>;"
    :cond_3
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 162
    :cond_4
    return-void
.end method
