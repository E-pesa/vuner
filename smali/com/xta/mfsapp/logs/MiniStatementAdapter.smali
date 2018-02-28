.class public Lcom/tigo/mfsapp/logs/MiniStatementAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MiniStatementAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/MiniStatementInfo;",
        ">;"
    }
.end annotation


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .param p3, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/MiniStatementInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/MiniStatementInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0d0236

    const/4 v10, 0x1

    const v5, 0x7f0d023a

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "rowView":Landroid/view/View;
    new-instance v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;-><init>()V

    .line 39
    .local v3, "viewHolder":Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;
    const v4, 0x7f0d022e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->from:Landroid/widget/TextView;

    .line 40
    const v4, 0x7f0d0230

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->to:Landroid/widget/TextView;

    .line 41
    const v4, 0x7f0d022a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    .line 42
    const v4, 0x7f0d0227

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    .line 43
    const v4, 0x7f0d022b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->dots:Landroid/widget/ImageView;

    .line 45
    const v4, 0x7f0d0237

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    .line 46
    const v4, 0x7f0d0229

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 47
    const v4, 0x7f0d0239

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->hideDate:Landroid/widget/TextView;

    .line 48
    const v4, 0x7f0d0238

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->total:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->wallet:Landroid/widget/TextView;

    .line 50
    const v4, 0x7f0d0228

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->type:Landroid/widget/TextView;

    .line 52
    const v4, 0x7f0d023c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->to_hn:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f0d023b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->transactionid:Landroid/widget/TextView;

    .line 57
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v10, :cond_4

    .line 59
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 60
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 66
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;

    .line 69
    .local v0, "holder":Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/MiniStatementInfo;

    .line 70
    .local v1, "info":Lcom/tigo/mfsapp/model/MiniStatementInfo;
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->from:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->to:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->type:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getAmount()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "-"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const v5, 0x7f020102

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_1
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 86
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->hideDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->wallet:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getWallet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sv.tigo.mfsapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "bo.tigo.mfsapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 94
    iget-object v4, v3, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->dots:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :cond_1
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->to_hn:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->to_hn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getTo()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->transactionid:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->transactionid:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getTransactionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_3
    return-object v2

    .line 63
    .end local v0    # "holder":Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;
    .end local v1    # "info":Lcom/tigo/mfsapp/model/MiniStatementInfo;
    :cond_4
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 80
    .restart local v0    # "holder":Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;
    .restart local v1    # "info":Lcom/tigo/mfsapp/model/MiniStatementInfo;
    :cond_5
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object v4, v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter$ViewHolder;->arrow:Landroid/widget/ImageView;

    const v5, 0x7f020098

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method
