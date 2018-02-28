.class public Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BankToWalletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/Bank;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Bank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/Bank;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 24
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    if-nez p2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 35
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030021

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 36
    new-instance v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;-><init>()V

    .line 37
    .local v2, "viewHolder":Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;
    const v3, 0x7f0d0085

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 38
    const v3, 0x7f0d0086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 39
    const v3, 0x7f0d009b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->ussdNumber:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bank;

    .line 47
    .local v0, "bank":Lcom/tigo/mfsapp/model/Bank;
    iget-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bank;->getBankName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->ussdNumber:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060276

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bank;->getUsddNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v3, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iput-object v0, v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;->info:Lcom/tigo/mfsapp/model/Bank;

    .line 52
    return-object p2

    .line 43
    .end local v0    # "bank":Lcom/tigo/mfsapp/model/Bank;
    .end local v2    # "viewHolder":Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;
    goto :goto_0
.end method
