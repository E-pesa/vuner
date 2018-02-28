.class public Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BillPaymentPaymentsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public amount:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public reference:Landroid/widget/TextView;

.field public rowDate:Landroid/view/View;

.field public selectedIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
