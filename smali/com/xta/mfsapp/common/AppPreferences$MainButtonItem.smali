.class public final enum Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
.super Ljava/lang/Enum;
.source "AppPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/common/AppPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MainButtonItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum ActivateSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum ActivityLog:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum AnyoneTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum BankToWallet:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum BankTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum BillPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum CashOut:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum CashOutConfirmation:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum CommissionStatement:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum DepositMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum FindMerchants:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum FindStores:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum InterestPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum InternationalRemittancePickUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum InternationalRemittanceSend:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum MerchantCreatePayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum MerchantInitiatedPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum MerchantPay:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum MoneyTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum MonthlyStatements:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum PendingTransactions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum PendingVouchers:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum RegisterSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum SendMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum SendMoneyCustomer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum Settings:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum Subscriptions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum TopUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum WithDrawVoucher:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

.field public static final enum WithdrawMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "TopUp"

    invoke-direct {v0, v1, v3}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->TopUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "CashOut"

    invoke-direct {v0, v1, v4}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOut:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "SendMoney"

    invoke-direct {v0, v1, v5}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->SendMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "BillPayment"

    invoke-direct {v0, v1, v6}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BillPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "BankTransfer"

    invoke-direct {v0, v1, v7}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BankTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "MerchantPay"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantPay:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "CashOutConfirmation"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOutConfirmation:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "InternationalRemittancePickUp"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InternationalRemittancePickUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "InternationalRemittanceSend"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InternationalRemittanceSend:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "MerchantInitiatedPayment"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantInitiatedPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "ActivityLog"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->ActivityLog:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "Settings"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->Settings:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "FindStores"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->FindStores:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "FindMerchants"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->FindMerchants:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "MerchantCreatePayment"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantCreatePayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "CommissionStatement"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CommissionStatement:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "MoneyTransfer"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MoneyTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "DepositMoney"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->DepositMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "WithDrawVoucher"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->WithDrawVoucher:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "RegisterSubscriber"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->RegisterSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "ActivateSubscriber"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->ActivateSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "AnyoneTransfer"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->AnyoneTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "WithdrawMoney"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->WithdrawMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "SendMoneyCustomer"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->SendMoneyCustomer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "PendingVouchers"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingVouchers:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "BankToWallet"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BankToWallet:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "PendingTransactions"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingTransactions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "MonthlyStatements"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MonthlyStatements:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "InterestPayment"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InterestPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    const-string v1, "Subscriptions"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->Subscriptions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    .line 106
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->TopUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOut:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->SendMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BillPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BankTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantPay:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOutConfirmation:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InternationalRemittancePickUp:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InternationalRemittanceSend:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantInitiatedPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->ActivityLog:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->Settings:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->FindStores:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->FindMerchants:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantCreatePayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CommissionStatement:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MoneyTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->DepositMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->WithDrawVoucher:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->RegisterSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->ActivateSubscriber:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->AnyoneTransfer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->WithdrawMoney:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->SendMoneyCustomer:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingVouchers:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->BankToWallet:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingTransactions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MonthlyStatements:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->InterestPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->Subscriptions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->$VALUES:[Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    return-object v0
.end method

.method public static values()[Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->$VALUES:[Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-virtual {v0}, [Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    return-object v0
.end method
