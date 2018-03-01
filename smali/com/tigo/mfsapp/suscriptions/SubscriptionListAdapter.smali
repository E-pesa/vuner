.class public Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SubscriptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Subscription;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Subscription;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->context:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    if-nez p2, :cond_0

    .line 65
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->context:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 66
    .local v2, "inf":Landroid/view/LayoutInflater;
    const v5, 0x7f0300c3

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 68
    .local v4, "v":Landroid/view/View;
    new-instance v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;-><init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;)V

    .line 70
    .local v1, "h":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    const v5, 0x7f0d00b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->name:Landroid/widget/TextView;

    .line 71
    const v5, 0x7f0d00c5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->Desc:Landroid/widget/TextView;

    .line 72
    const v5, 0x7f0d0088

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->star:Landroid/widget/ImageView;

    .line 74
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    .end local v1    # "h":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    .end local v2    # "inf":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;

    .line 82
    .restart local v1    # "h":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    :try_start_0
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v0, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 83
    .local v0, "current":Ljava/util/Locale;
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getName()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/tigo/mfsapp/model/Subscription;->getMappedLocale(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "locale":Ljava/lang/String;
    iget-object v6, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->name:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getName()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v6, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->Desc:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getDesc()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->star:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    .end local v0    # "current":Ljava/util/Locale;
    .end local v3    # "locale":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 76
    .end local v1    # "h":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    move-object v4, p2

    .restart local v4    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 90
    .restart local v0    # "current":Ljava/util/Locale;
    .restart local v1    # "h":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
    .restart local v3    # "locale":Ljava/lang/String;
    :cond_1
    iget-object v5, v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->star:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    .end local v0    # "current":Ljava/util/Locale;
    .end local v3    # "locale":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
