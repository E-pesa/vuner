.class public Lcom/tigo/mfsapp/adapters/WalletAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WalletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/Wallet;",
        ">;"
    }
.end annotation


# static fields
.field private static final layout:I = 0x1090006


# instance fields
.field walletView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/Wallet;>;"
    const v1, 0x1090006

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1, p1}, Lcom/tigo/mfsapp/utils/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v0, v1

    .line 31
    .local v0, "walletDimmension":I
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/adapters/WalletAdapter;->walletView:Landroid/widget/ImageView;

    .line 32
    iget-object v1, p0, Lcom/tigo/mfsapp/adapters/WalletAdapter;->walletView:Landroid/widget/ImageView;

    const v2, 0x7f0200da

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    iget-object v1, p0, Lcom/tigo/mfsapp/adapters/WalletAdapter;->walletView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 46
    if-nez p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/tigo/mfsapp/adapters/WalletAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 51
    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/adapters/WalletAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tigo/mfsapp/adapters/WalletAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    return-object p2

    .line 55
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/adapters/WalletAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Wallet;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/WalletAdapter;->walletView:Landroid/widget/ImageView;

    return-object v0
.end method
