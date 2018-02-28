.class Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment$1;
.super Ljava/lang/Object;
.source "InternationalRemittancePickUpByCustomerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->createSpinnerCountry()Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
