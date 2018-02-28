.class Lcom/tigo/mfsapp/adapters/BanksAdapter$2;
.super Landroid/widget/Filter;
.source "BanksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter;->getFilterForCategory(ILjava/lang/String;)Landroid/widget/Filter;
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
    .line 212
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$2;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 233
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 234
    .local v1, "results":Landroid/widget/Filter$FilterResults;
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v0, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 237
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 239
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 217
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 218
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$500()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$2;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetChanged()V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$2;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
