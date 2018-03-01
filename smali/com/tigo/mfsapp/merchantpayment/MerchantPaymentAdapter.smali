.class public Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;
.super Landroid/widget/BaseAdapter;
.source "MerchantPaymentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;,
        Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private lastRequestIndex:I

.field private onGetViewListener:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

.field private operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->context:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public beginUpdate()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->updating:Z

    .line 108
    return-void
.end method

.method public endUpdate()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->updating:Z

    .line 113
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->operations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tigo/mfsapp/model/MerchantPaymet;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->operations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/MerchantPaymet;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getItem(I)Lcom/tigo/mfsapp/model/MerchantPaymet;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 132
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnGetViewListener()Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->onGetViewListener:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "rowView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_1

    .line 53
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 54
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03002b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 56
    new-instance v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;-><init>()V

    .line 57
    .local v2, "viewHolder":Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;
    const v3, 0x7f0d00ca

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->number:Landroid/widget/TextView;

    .line 58
    const v3, 0x7f0d00cb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 59
    const v3, 0x7f0d00cc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getItem(I)Lcom/tigo/mfsapp/model/MerchantPaymet;

    move-result-object v1

    .line 69
    .local v1, "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    iget-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getTransactionDatetime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->number:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v3, v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;->fee:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getAmount()F

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

    .line 72
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->onGetViewListener:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->updating:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->lastRequestIndex:I

    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getCount()I

    move-result v3

    iput v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->lastRequestIndex:I

    .line 75
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->onGetViewListener:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

    invoke-interface {v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;->needMoreRecords()V

    .line 78
    :cond_0
    return-object p2

    .line 63
    .end local v1    # "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    .end local v2    # "viewHolder":Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$ViewHolder;
    goto :goto_0
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public setOnGetViewListener(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;)V
    .locals 0
    .param p1, "onGetViewListener"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->onGetViewListener:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter$OnGetViewListener;

    .line 98
    return-void
.end method

.method public setOperations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/MerchantPaymet;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->operations:Ljava/util/ArrayList;

    .line 34
    return-void
.end method
