.class Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;
.super Landroid/widget/ArrayAdapter;
.source "CashOutStep1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/Agent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 190
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/Agent;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 194
    if-nez p2, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    const v3, 0x7f0d0089

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Agent;

    .line 200
    .local v0, "agent":Lcom/tigo/mfsapp/model/Agent;
    const v3, 0x7f0d008a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 201
    .local v2, "contactName":Landroid/widget/TextView;
    const v3, 0x7f0d008b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 202
    .local v1, "contactDesc":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Agent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Agent;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object p2
.end method
