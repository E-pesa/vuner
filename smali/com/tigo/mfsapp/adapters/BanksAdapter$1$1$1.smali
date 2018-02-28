.class Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;
.super Ljava/lang/Object;
.source "BanksAdapter.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->confirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

.field final synthetic val$newFavorites:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->this$2:Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->val$newFavorites:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 155
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f06015b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 156
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->this$2:Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$holder:Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 144
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->val$newFavorites:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 145
    iget-object v1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->this$2:Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetChanged()V

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "filter":Landroid/widget/Filter;
    iget-object v1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1$1;->this$2:Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;->this$1:Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->getFilterForShowFavoritesCategory()Landroid/widget/Filter;

    move-result-object v0

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method
