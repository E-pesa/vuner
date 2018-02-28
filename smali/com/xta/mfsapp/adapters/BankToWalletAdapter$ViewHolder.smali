.class public Lcom/tigo/mfsapp/adapters/BankToWalletAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BankToWalletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public image:Landroid/widget/ImageView;

.field public info:Lcom/tigo/mfsapp/model/Bank;

.field public name:Landroid/widget/TextView;

.field public ussdNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
