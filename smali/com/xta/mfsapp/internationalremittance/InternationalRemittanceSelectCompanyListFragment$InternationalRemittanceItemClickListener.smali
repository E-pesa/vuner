.class Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;
.super Ljava/lang/Object;
.source "InternationalRemittanceSelectCompanyListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternationalRemittanceItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;-><init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->access$000(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;)Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->getItem(I)Lcom/tigo/mfsapp/model/RemittancePartner;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->access$100(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;Lcom/tigo/mfsapp/model/RemittancePartner;)V

    .line 57
    return-void
.end method
