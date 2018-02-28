.class Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "BanksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;Lcom/tigo/mfsapp/adapters/BanksAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;
    .param p2, "x1"    # Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 323
    .local v7, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_0

    .line 325
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 326
    const/4 v9, 0x0

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 361
    :goto_0
    return-object v7

    .line 327
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 329
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v4

    .line 330
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    iput-object v4, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 331
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 334
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "prefixString":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$600()Ljava/util/ArrayList;

    move-result-object v8

    .line 337
    .local v8, "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    .local v0, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 343
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 345
    .local v2, "h":Lcom/tigo/mfsapp/adapters/BankInfo;
    if-eqz v2, :cond_3

    .line 347
    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "from":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 351
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .end local v1    # "from":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    .end local v2    # "h":Lcom/tigo/mfsapp/adapters/BankInfo;
    :cond_4
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 358
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 368
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$502(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 369
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$702(Lcom/tigo/mfsapp/adapters/BanksAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 370
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetChanged()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
