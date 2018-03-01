.class public Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillPaymentSelectCompanyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public companyLogo:Landroid/widget/ImageView;

.field public companyName:Landroid/widget/TextView;

.field public companyPhone:Landroid/widget/TextView;

.field public starView:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$ViewHolder;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
