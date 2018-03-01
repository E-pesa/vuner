.class final Lcom/tigo/mfsapp/common/AppPreferences$1;
.super Ljava/util/LinkedHashMap;
.source "AppPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 217
    const-string v1, "Name"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601af

    const v4, 0x7f02012a

    const/4 v5, 0x0

    const v7, 0x7f02012a

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v7, "UseMyWallet"

    new-instance v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v2, 0x7f060078

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getVisibleItemsForRole()Ljava/util/ArrayList;

    move-result-object v25

    .line 224
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 230
    .local v24, "string":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v24 .. v24}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v19

    .line 231
    .local v19, "buttonItem":Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    sget-object v1, Lcom/tigo/mfsapp/common/AppPreferences$2;->$SwitchMap$com$tigo$mfsapp$common$AppPreferences$MainButtonItem:[I

    invoke-virtual/range {v19 .. v19}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 234
    :pswitch_0
    const-string v1, "TopUp"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060072

    const v4, 0x7f02012c

    const-class v5, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const v7, 0x7f0200bf

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    .end local v19    # "buttonItem":Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    :catch_0
    move-exception v21

    .line 361
    .local v21, "e":Ljava/lang/Exception;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v21    # "e":Ljava/lang/Exception;
    .restart local v19    # "buttonItem":Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    :pswitch_1
    :try_start_1
    const-string v1, "SendMoney"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060069

    const v4, 0x7f02010f

    const-class v5, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;

    const v7, 0x7f0200bd

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 242
    :pswitch_2
    const-string v1, "BillPayment"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060034

    const v4, 0x7f02003d

    const-class v5, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    const v7, 0x7f0200ba

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :pswitch_3
    const-string v1, "BankTransfer"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060033

    const v4, 0x7f02003c

    const-class v5, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    const v7, 0x7f0200bd

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    :pswitch_4
    const-string v1, "CashOut"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f06003a

    const v4, 0x7f020043

    const-class v5, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;

    const v7, 0x7f0200ba

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 254
    :pswitch_5
    const-string v1, "CashOutConfirmation"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060082

    const v4, 0x7f020043

    const-class v5, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    const v7, 0x7f0200ba

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 258
    :pswitch_6
    const-string v1, "InternationalRemittancePickUp"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060209

    const v4, 0x7f0200dd

    const-class v5, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;

    const v7, 0x7f0200c5

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :pswitch_7
    const-string v1, "InternationalRemittanceSend"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060065

    const v4, 0x7f0200df

    const-class v5, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;

    const v7, 0x7f0200c6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 266
    :pswitch_8
    const-string v1, "MerchantInitiatedPayment"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060183

    const v4, 0x7f0200f7

    const-class v5, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    const v7, 0x7f0200c7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 271
    :pswitch_9
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    const-string v1, "ActivityLog"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060056

    const v4, 0x7f0200f8

    const-class v5, Lcom/tigo/mfsapp/logs/LogsManager;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 279
    :pswitch_a
    const-string v1, "Settings"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060052

    const v4, 0x7f020110

    const-class v5, Lcom/tigo/mfsapp/settings/SettingsFragment;

    const/4 v7, 0x0

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 283
    :pswitch_b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v6, "abundle":Landroid/os/Bundle;
    const-string v1, "TYPE_KEY"

    const-string v2, "AGENT_KEY"

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v7, "FindStores"

    new-instance v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v2, 0x7f060161

    const v3, 0x7f0200fa

    const-class v4, Lcom/tigo/mfsapp/maps/MapTabsFragment;

    const v5, 0x7f0200f1

    invoke-direct/range {v1 .. v6}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;ILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 290
    .end local v6    # "abundle":Landroid/os/Bundle;
    :pswitch_c
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 291
    .local v12, "mbundle":Landroid/os/Bundle;
    const-string v1, "TYPE_KEY"

    const-string v2, "MERCHANT_KEY"

    invoke-virtual {v12, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v1, "FindMerchants"

    new-instance v7, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v8, 0x7f060162

    const v9, 0x7f0200fb

    const-class v10, Lcom/tigo/mfsapp/maps/MapTabsFragment;

    const v11, 0x7f0200f2

    invoke-direct/range {v7 .. v12}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;ILandroid/os/Bundle;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 296
    .end local v12    # "mbundle":Landroid/os/Bundle;
    :pswitch_d
    const-string v1, "MerchantCreatePayment"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060235

    const v4, 0x7f0200f7

    const-class v5, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;

    const v7, 0x7f0200c7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 300
    :pswitch_e
    const-string v1, "MoneyTransfer"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601a0

    const v4, 0x7f02010d

    const-class v5, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;

    const v7, 0x7f0200f5

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 304
    :pswitch_f
    const-string v1, "DepositMoney"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f06019c

    const v4, 0x7f02008b

    const-class v5, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;

    const v7, 0x7f0200ef

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 308
    :pswitch_10
    const-string v1, "WithDrawVoucher"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0602a4

    const v4, 0x7f020136

    const-class v5, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;

    const v7, 0x7f0200f6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 312
    :pswitch_11
    const-string v1, "RegisterSubscriber"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601f4

    const v4, 0x7f020103

    const-class v5, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    const v7, 0x7f0200f4

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 316
    :pswitch_12
    const-string v1, "ActivateSubscriber"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0600a1

    const v4, 0x7f020034

    const-class v5, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;

    const v7, 0x7f0200ea

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 320
    :pswitch_13
    const-string v1, "AnyoneTransfer"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0600d3

    const v4, 0x7f020039

    const-class v5, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;

    const v7, 0x7f0200eb

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 324
    :pswitch_14
    const-string v1, "WithdrawMoney"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060282

    const v4, 0x7f020136

    const-class v5, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneySelectFragment;

    const v7, 0x7f0200f6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 328
    :pswitch_15
    const-string v1, "SendMoneyCustomer"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060254

    const v4, 0x7f02010f

    const-class v5, Lcom/tigo/mfsapp/sendmoney/SendMoneySelectFragment;

    const v7, 0x7f0200bd

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 332
    :pswitch_16
    const-string v1, "BankToWallet"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0600f0

    const v4, 0x7f02003b

    const-class v5, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    const v7, 0x7f0200ec

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 336
    :pswitch_17
    const-string v1, "PendingTransactions"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601c0

    const v4, 0x7f020086

    const-class v5, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    const v7, 0x7f0200ee

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 341
    :pswitch_18
    const-string v1, "MonthlyStatements"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601aa

    const v4, 0x7f020086

    const-class v5, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;

    const v7, 0x7f0200ee

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 345
    :pswitch_19
    const-string v1, "InterestPayment"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060173

    const v4, 0x7f0200dc

    const-class v5, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    const v7, 0x7f0200f0

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 350
    :pswitch_1a
    const-string v1, "Subscriptions"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060093

    const v4, 0x7f020125

    const-class v5, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;

    const v7, 0x7f020126

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 368
    .end local v19    # "buttonItem":Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    .end local v24    # "string":Ljava/lang/String;
    :cond_1
    const-string v1, "empty"

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getROLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 370
    .local v22, "role":Ljava/lang/String;
    const-string v1, "SepControl"

    new-instance v13, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v14, 0x7f06004e

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v13 .. v18}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "ActLog"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060047

    const v4, 0x7f0200b6

    const-class v5, Lcom/tigo/mfsapp/logs/LogsManager;

    const v7, 0x7f0200b6

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowMinistatement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    const-string v1, "Mini"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f06004c

    const v4, 0x7f0200b6

    const-class v5, Lcom/tigo/mfsapp/logs/LogsManagerMini;

    const v7, 0x7f0200cd

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_2
    const-string v1, "agent"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 378
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowCommissionStatement()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    const-string v1, "CommissionStatement"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f06017a

    const v4, 0x7f0200b6

    const-class v5, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;

    const v7, 0x7f0200ed

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_3
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowPendingVouchers()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    const-string v1, "PendingVouchers"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f0601d1

    const v4, 0x7f0200fd

    const-class v5, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    const v7, 0x7f0200f3

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_4
    const-string v1, "SepHelp"

    new-instance v13, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v14, 0x7f060050

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-direct/range {v13 .. v18}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v20

    .line 392
    .local v20, "carrusels":Lcom/tigo/mfsapp/model/Carrusels;
    if-eqz v20, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 395
    const v23, 0x7f0200c3

    .line 397
    .local v23, "slide":I
    const-string v1, "Side Menu 1"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060178

    const v4, 0x7f0200c3

    const/4 v5, 0x0

    const v7, 0x7f0200c3

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 400
    const-string v1, "Side Menu 1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setCustomTitle(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V

    .line 401
    const-string v1, "Side Menu 1"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setUseCustomTitle(Z)V

    .line 406
    .end local v23    # "slide":I
    :cond_5
    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 408
    const v23, 0x7f0200c9

    .line 411
    .restart local v23    # "slide":I
    const-string v1, "Side Menu 2"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060179

    const v4, 0x7f0200c9

    const/4 v5, 0x0

    const v7, 0x7f0200c9

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 414
    const-string v1, "Side Menu 2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setCustomTitle(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V

    .line 415
    const-string v1, "Side Menu 2"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/common/AppPreferences$1;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setUseCustomTitle(Z)V

    .line 419
    .end local v23    # "slide":I
    :cond_6
    const-string v1, "Contact"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060049

    const v4, 0x7f0200ae

    const-class v5, Lcom/tigo/mfsapp/contactus/ContactUsFragment;

    const v7, 0x7f0200ae

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "Settingsleft"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060052

    const v4, 0x7f0200ad

    const-class v5, Lcom/tigo/mfsapp/settings/SettingsFragment;

    const v7, 0x7f0200ad

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowDeregisterThisInSideBar()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 425
    const-string v1, "DeregisterTHISDevice"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f06011c

    const v4, 0x7f0200ad

    const/4 v5, 0x0

    const v7, 0x7f0200ad

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_7
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 429
    const-string v1, "Exit"

    new-instance v2, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v3, 0x7f060046

    const v4, 0x7f0200b7

    const/4 v5, 0x0

    const v7, 0x7f0200b7

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/AppPreferences$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_8
    return-void

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
