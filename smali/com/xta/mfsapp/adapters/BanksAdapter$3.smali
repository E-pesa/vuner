.class Lcom/tigo/mfsapp/adapters/BanksAdapter$3;
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
    .line 246
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$3;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    new-instance v8, Landroid/widget/Filter$FilterResults;

    invoke-direct {v8}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 268
    .local v8, "results":Landroid/widget/Filter$FilterResults;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v7, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 272
    .local v6, "bankData":Lcom/tigo/mfsapp/adapters/BankInfo;
    invoke-virtual {v6}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v0

    const-string v3, "b"

    move v4, v2

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    .end local v6    # "bankData":Lcom/tigo/mfsapp/adapters/BankInfo;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v8, Landroid/widget/Filter$FilterResults;->count:I

    .line 280
    iput-object v7, v8, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 282
    return-object v8
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 251
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$500()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$500()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$3;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetChanged()V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$3;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
