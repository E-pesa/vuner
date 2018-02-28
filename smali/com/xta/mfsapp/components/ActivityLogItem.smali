.class public Lcom/tigo/mfsapp/components/ActivityLogItem;
.super Landroid/widget/LinearLayout;
.source "ActivityLogItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 21
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030017

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public openClose()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 31
    const v3, 0x7f0d0053

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/ActivityLogItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 32
    .local v1, "r":Landroid/widget/RelativeLayout;
    const v3, 0x7f0d0052

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/ActivityLogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    .local v0, "dots":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/ActivityLogItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;

    .line 34
    .local v2, "viewHolder":Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;
    iget-object v3, v2, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 36
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 38
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 39
    const v3, 0x7f020097

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v3, v2, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->info:Lcom/tigo/mfsapp/model/ActivityLogInfo;

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->setOpened(Z)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 44
    const v3, 0x7f020137

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v3, v2, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->info:Lcom/tigo/mfsapp/model/ActivityLogInfo;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->setOpened(Z)V

    goto :goto_0
.end method
