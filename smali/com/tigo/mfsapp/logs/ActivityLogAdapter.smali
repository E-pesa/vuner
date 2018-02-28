.class public Lcom/tigo/mfsapp/logs/ActivityLogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActivityLogAdapter.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CutPasteId"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;,
        Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private lastRequestIndex:I

.field private onGetViewListener:Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

.field private updating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/util/List;)V
    .locals 1
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
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/ActivityLogInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->updating:Z

    .line 40
    return-void
.end method


# virtual methods
.method public beginUpdate()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->updating:Z

    .line 111
    return-void
.end method

.method public endUpdate()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->updating:Z

    .line 116
    return-void
.end method

.method public getOnGetViewListener()Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->onGetViewListener:Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "rowView":Landroid/view/View;
    new-instance v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;

    invoke-direct {v4}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;-><init>()V

    .line 47
    .local v4, "viewHolder":Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;
    const v5, 0x7f0d0050

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->operation:Landroid/widget/TextView;

    .line 48
    const v5, 0x7f0d0051

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 49
    const v5, 0x7f0d0054

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    .line 50
    const v5, 0x7f0d0052

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->threeDots:Landroid/view/View;

    .line 52
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;

    .line 55
    .local v1, "holder":Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/ActivityLogInfo;

    .line 56
    .local v2, "info":Lcom/tigo/mfsapp/model/ActivityLogInfo;
    iput-object v2, v4, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->info:Lcom/tigo/mfsapp/model/ActivityLogInfo;

    .line 57
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->operation:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->getLocalizedOperationType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->date:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->getDateTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "HRS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->getDetail()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 61
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->getFormattedDetail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->threeDots:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :goto_0
    const v5, 0x7f0d0052

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .local v0, "dots":Landroid/widget/ImageView;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const v5, 0x7f0d0053

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 73
    const v5, 0x7f020137

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    :goto_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_0

    iget-object v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->onGetViewListener:Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->updating:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->lastRequestIndex:I

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->getCount()I

    move-result v5

    iput v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->lastRequestIndex:I

    .line 83
    iget-object v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->onGetViewListener:Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

    invoke-interface {v5}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;->needMoreRecords()V

    .line 86
    :cond_0
    return-object v3

    .line 65
    .end local v0    # "dots":Landroid/widget/ImageView;
    :cond_1
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->threeDots:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v5, v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    .restart local v0    # "dots":Landroid/widget/ImageView;
    :cond_2
    const v5, 0x7f0d0053

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    const v5, 0x7f020097

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setOnGetViewListener(Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;)V
    .locals 0
    .param p1, "onGetViewListener"    # Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->onGetViewListener:Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;

    .line 101
    return-void
.end method
