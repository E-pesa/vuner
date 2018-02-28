.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;
.super Landroid/widget/BaseAdapter;
.source "InternationalRemittanceCompanyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private companies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->companies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/tigo/mfsapp/model/RemittancePartner;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->companies:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/RemittancePartner;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->getItem(I)Lcom/tigo/mfsapp/model/RemittancePartner;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "rowView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 43
    iget-object v3, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 44
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03008c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;-><init>()V

    .line 47
    .local v2, "viewHolder":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;
    const v3, 0x7f0d020e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;->companyName:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    .end local v1    # "li":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->getItem(I)Lcom/tigo/mfsapp/model/RemittancePartner;

    move-result-object v0

    .line 57
    .local v0, "comm":Lcom/tigo/mfsapp/model/RemittancePartner;
    iget-object v3, v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;->companyName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/RemittancePartner;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-object p2

    .line 52
    .end local v0    # "comm":Lcom/tigo/mfsapp/model/RemittancePartner;
    .end local v2    # "viewHolder":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;

    .restart local v2    # "viewHolder":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter$ViewHolder;
    goto :goto_0
.end method

.method public openCloseItem()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setCompanies(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "companies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/RemittancePartner;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->companies:Ljava/util/ArrayList;

    .line 24
    return-void
.end method
