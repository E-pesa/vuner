.class public Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "LeftMenuAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    .line 31
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 56
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 57
    .local v0, "bInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isSeparator()Z

    move-result v6

    if-nez v6, :cond_3

    .line 60
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 61
    .local v2, "li":Landroid/view/LayoutInflater;
    const v6, 0x7f030090

    invoke-virtual {v2, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    const v6, 0x7f0d0217

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 64
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f0d0216

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 66
    .local v1, "bmImage":Landroid/widget/ImageView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    if-nez p1, :cond_1

    .line 70
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "ACCOUNT_NAME"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getLeftMenuImage()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getNotification()I

    move-result v6

    if-lez v6, :cond_0

    .line 86
    const v6, 0x7f0d0218

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 87
    .local v3, "notification":Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getNotification()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    .end local v1    # "bmImage":Landroid/widget/ImageView;
    .end local v3    # "notification":Landroid/widget/Button;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object p2

    .line 75
    .restart local v1    # "bmImage":Landroid/widget/ImageView;
    .restart local v5    # "title":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isUseCustomTitle()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getCustomTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 93
    .end local v1    # "bmImage":Landroid/widget/ImageView;
    .end local v2    # "li":Landroid/view/LayoutInflater;
    .end local v5    # "title":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->context:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 94
    .restart local v2    # "li":Landroid/view/LayoutInflater;
    const v6, 0x7f030091

    invoke-virtual {v2, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 95
    const v6, 0x7f0d0219

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 96
    .local v4, "separator":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p2, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->list:Ljava/util/List;

    .line 27
    return-void
.end method
