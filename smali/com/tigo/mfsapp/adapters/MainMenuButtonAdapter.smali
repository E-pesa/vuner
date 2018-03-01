.class public Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;
.super Landroid/widget/BaseAdapter;
.source "MainMenuButtonAdapter.java"


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
    .line 24
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 52
    .local v0, "bInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    new-instance p2, Lcom/tigo/mfsapp/components/MainMenuButton;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v6}, Lcom/tigo/mfsapp/components/MainMenuButton;-><init>(Landroid/content/Context;)V

    .line 54
    .restart local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 55
    .local v3, "item":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getCustomBackgroundId()I

    move-result v2

    .line 57
    .local v2, "customBackgroundId":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    .line 59
    const v6, 0x7f0d021d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    :cond_0
    const v6, 0x7f0d010f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, "title":Landroid/widget/TextView;
    const v6, 0x7f0d010e

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 64
    .local v1, "bmImage":Landroid/widget/ImageView;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getNotification()I

    move-result v6

    if-lez v6, :cond_1

    .line 66
    const v6, 0x7f0d0218

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 67
    .local v4, "notification":Landroid/widget/Button;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getNotification()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    .end local v4    # "notification":Landroid/widget/Button;
    :cond_1
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isWhite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    iget-object v6, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    :cond_2
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isUseCustomTitle()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 77
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getCustomTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getbImage()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getFragmentClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 84
    return-object p2

    .line 79
    :cond_3
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
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
    .line 89
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->list:Ljava/util/List;

    .line 90
    return-void
.end method
