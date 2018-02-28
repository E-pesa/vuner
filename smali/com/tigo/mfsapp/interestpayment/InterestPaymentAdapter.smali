.class public Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InterestPaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;,
        Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;


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
            "Lcom/tigo/mfsapp/model/InterestPaymentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/InterestPaymentInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getItemConfirmListener()Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->listener:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CutPasteId"
        }
    .end annotation

    .prologue
    const v11, 0x7f0d020a

    const v10, 0x7f0d0209

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 43
    .local v4, "rowView":Landroid/view/View;
    new-instance v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;-><init>()V

    .line 44
    .local v5, "viewHolder":Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;
    const v6, 0x7f0d0208

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 45
    const v6, 0x7f0d020b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->threeDots:Landroid/view/View;

    .line 47
    const v6, 0x7f0d020c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->confirmButton:Landroid/widget/Button;

    .line 48
    const v6, 0x7f0d020d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->confirmedText:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;

    .line 53
    .local v1, "holder":Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    .line 54
    .local v2, "info":Lcom/tigo/mfsapp/model/InterestPaymentInfo;
    iput-object v2, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->info:Lcom/tigo/mfsapp/model/InterestPaymentInfo;

    .line 55
    iget-object v6, v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v6, v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v6, v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->threeDots:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 59
    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    .local v0, "dots":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 64
    const v6, 0x7f020137

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    :goto_0
    iget-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->confirmButton:Landroid/widget/Button;

    new-instance v7, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;

    invoke-direct {v7, p0, v2}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$1;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;Lcom/tigo/mfsapp/model/InterestPaymentInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v3, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;

    invoke-direct {v3, p0, v2, v4, v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$2;-><init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;Lcom/tigo/mfsapp/model/InterestPaymentInfo;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 100
    .local v3, "openCloseOnClickLister":Landroid/view/View$OnClickListener;
    iget-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v6, v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->threeDots:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    iget-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->confirmButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    iget-object v6, v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ViewHolder;->confirmedText:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    :cond_0
    return-object v4

    .line 67
    .end local v3    # "openCloseOnClickLister":Landroid/view/View$OnClickListener;
    :cond_1
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 68
    const v6, 0x7f020097

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public setItemConfirmListener(Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter;->listener:Lcom/tigo/mfsapp/interestpayment/InterestPaymentAdapter$ItemConfirmListener;

    .line 130
    return-void
.end method
