.class public Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PendingVouchersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public amount:Landroid/widget/TextView;

.field public voucherDateTime:Landroid/widget/TextView;

.field public voucherID:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
