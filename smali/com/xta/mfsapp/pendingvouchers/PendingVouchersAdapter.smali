.class public Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;
.super Landroid/widget/BaseAdapter;
.source "PendingVouchersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private pendingVouchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->pendingVouchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tigo/mfsapp/model/PendingVouchers;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->pendingVouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/PendingVouchers;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->getItem(I)Lcom/tigo/mfsapp/model/PendingVouchers;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "rowView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    if-nez p2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 43
    .local v0, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f0300b1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;-><init>()V

    .line 46
    .local v1, "viewHolder":Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;
    const v3, 0x7f0d026b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->voucherID:Landroid/widget/TextView;

    .line 47
    const v3, 0x7f0d026c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->voucherDateTime:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f0d026d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .end local v0    # "li":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->getItem(I)Lcom/tigo/mfsapp/model/PendingVouchers;

    move-result-object v2

    .line 57
    .local v2, "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    iget-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->voucherDateTime:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/PendingVouchers;->getVoucherDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->getContext()Landroid/content/Context;

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

    .line 58
    iget-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->voucherID:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/PendingVouchers;->getVoucherID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;->amount:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/PendingVouchers;->getAmount()Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    return-object p2

    .line 52
    .end local v1    # "viewHolder":Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;
    .end local v2    # "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;

    .restart local v1    # "viewHolder":Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setOperations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "pendingVouchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/PendingVouchers;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->pendingVouchers:Ljava/util/ArrayList;

    .line 27
    return-void
.end method
