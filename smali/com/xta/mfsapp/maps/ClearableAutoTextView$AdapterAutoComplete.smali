.class public Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;
.super Landroid/widget/ArrayAdapter;
.source "ClearableAutoTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterAutoComplete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "viewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->this$0:Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .line 265
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 266
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 271
    move-object v1, p2

    .line 272
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 275
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v2, 0x7f03001c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 278
    .end local v0    # "inflate":Landroid/view/LayoutInflater;
    :cond_0
    const v2, 0x7f0d0084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;

    invoke-interface {v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;->getDisplayString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    new-instance v2, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;

    invoke-direct {v2, p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete$1;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    return-object v1
.end method
