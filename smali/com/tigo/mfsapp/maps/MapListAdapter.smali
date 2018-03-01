.class public Lcom/tigo/mfsapp/maps/MapListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MapListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;,
        Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/maps/Pin;",
        ">;"
    }
.end annotation


# instance fields
.field private lastRequestIndex:I

.field private onGetViewListener:Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

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
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/maps/Pin;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->updating:Z

    .line 30
    return-void
.end method


# virtual methods
.method public beginUpdate()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->updating:Z

    .line 80
    return-void
.end method

.method public endUpdate()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->updating:Z

    .line 85
    return-void
.end method

.method public getOnGetViewListener()Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->onGetViewListener:Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 36
    .local v2, "rowView":Landroid/view/View;
    new-instance v3, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;

    invoke-direct {v3}, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;-><init>()V

    .line 37
    .local v3, "viewHolder":Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;
    const v4, 0x7f0d021a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 38
    const v4, 0x7f0d021b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 40
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;

    .line 43
    .local v0, "holder":Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/maps/MapListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 45
    .local v1, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    if-eqz v1, :cond_0

    .line 47
    iget-object v4, v0, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Pin;->getNamePOS()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v4, v0, Lcom/tigo/mfsapp/maps/MapListAdapter$ViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Pin;->getNeighborhood()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapListAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->onGetViewListener:Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->updating:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->lastRequestIndex:I

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapListAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapListAdapter;->getCount()I

    move-result v4

    iput v4, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->lastRequestIndex:I

    .line 54
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->onGetViewListener:Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

    invoke-interface {v4}, Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;->needMoreRecords()V

    .line 57
    :cond_1
    return-object v2
.end method

.method public setOnGetViewListener(Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;)V
    .locals 0
    .param p1, "onGetViewListener"    # Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapListAdapter;->onGetViewListener:Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;

    .line 70
    return-void
.end method
