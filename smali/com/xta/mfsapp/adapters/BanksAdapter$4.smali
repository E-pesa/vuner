.class Lcom/tigo/mfsapp/adapters/BanksAdapter$4;
.super Landroid/widget/Filter;
.source "BanksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter;->getFilterForShowAllCategory()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 388
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 389
    .local v0, "result":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 390
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 391
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 398
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$502(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 399
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$702(Lcom/tigo/mfsapp/adapters/BanksAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 401
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetInvalidated()V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
