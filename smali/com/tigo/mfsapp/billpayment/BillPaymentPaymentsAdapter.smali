.class public Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BillPaymentPaymentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;,
        Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;
    }
.end annotation


# instance fields
.field private bills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private lastRequestIndex:I

.field private onGetViewListener:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

.field private selectedBill:I

.field private updating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->selectedBill:I

    .line 42
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public beginUpdate()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->updating:Z

    .line 126
    return-void
.end method

.method public endUpdate()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->updating:Z

    .line 131
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->bills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tigo/mfsapp/model/Bill;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->bills:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bill;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getItem(I)Lcom/tigo/mfsapp/model/Bill;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnGetViewListener()Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->onGetViewListener:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "rowView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 55
    if-nez p2, :cond_1

    .line 57
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 58
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f030027

    invoke-virtual {v1, v3, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 60
    new-instance v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;-><init>()V

    .line 61
    .local v2, "viewHolder":Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;
    const v3, 0x7f0d00c0

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->reference:Landroid/widget/TextView;

    .line 62
    const v3, 0x7f0d00c2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 63
    const v3, 0x7f0d00c1

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->rowDate:Landroid/view/View;

    .line 64
    const v3, 0x7f0d00c3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    .line 65
    const v3, 0x7f0d00c4

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->selectedIcon:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getItem(I)Lcom/tigo/mfsapp/model/Bill;

    move-result-object v0

    .line 74
    .local v0, "bill":Lcom/tigo/mfsapp/model/Bill;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDueDate()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDueDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 76
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDueDate()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "HRS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1
    iget v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->selectedBill:I

    if-ne p1, v3, :cond_3

    .line 83
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->selectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :goto_2
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->reference:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getReferenceNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->onGetViewListener:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->updating:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->lastRequestIndex:I

    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->lastRequestIndex:I

    .line 91
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->onGetViewListener:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

    invoke-interface {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;->needMoreRecords()V

    .line 94
    :cond_0
    return-object p2

    .line 69
    .end local v0    # "bill":Lcom/tigo/mfsapp/model/Bill;
    .end local v2    # "viewHolder":Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;
    goto/16 :goto_0

    .line 79
    .restart local v0    # "bill":Lcom/tigo/mfsapp/model/Bill;
    :cond_2
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->rowDate:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v3, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;->selectedIcon:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public restoreBillSelected()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->selectedBill:I

    .line 143
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->notifyDataSetChanged()V

    .line 144
    return-void
.end method

.method public setBillSelected(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->selectedBill:I

    .line 148
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method

.method public setBills(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "bills":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Bill;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->bills:Ljava/util/ArrayList;

    .line 38
    return-void
.end method

.method public setOnGetViewListener(Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;)V
    .locals 0
    .param p1, "onGetViewListener"    # Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->onGetViewListener:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$OnGetViewListener;

    .line 116
    return-void
.end method
