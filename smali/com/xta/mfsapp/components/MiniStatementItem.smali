.class public Lcom/tigo/mfsapp/components/MiniStatementItem;
.super Landroid/widget/LinearLayout;
.source "MiniStatementItem.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 23
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0300a1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method


# virtual methods
.method public openClose()V
    .locals 4

    .prologue
    .line 34
    const v3, 0x7f0d022c

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/MiniStatementItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 35
    .local v2, "r":Landroid/widget/RelativeLayout;
    const v3, 0x7f0d004f

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/MiniStatementItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 36
    .local v0, "arrow":Landroid/widget/ImageView;
    const v3, 0x7f0d022b

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/MiniStatementItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .local v1, "dots":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 39
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
