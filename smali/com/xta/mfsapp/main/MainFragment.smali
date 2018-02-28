.class public Lcom/tigo/mfsapp/main/MainFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MainFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;,
        Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

.field private gridView:Landroid/widget/GridView;

.field private isGettingPendingTransactions:Z

.field private isgettingMerchantList:Z

.field private isgettingPendingVouchers:Z

.field private isgettingTransactions:Z

.field private listButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

.field private notificationMerchantPaymentListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;

.field private notificationPendingTransactionsListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

.field private notificationPendingVouchersListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

.field private notificationTransactionListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

.field private notificationsMerchantPayments:I

.field private notificationsPendingTransactions:I

.field private notificationsPendingVouchers:I

.field private notificationsTransactions:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/main/MainFragment;)Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/main/MainFragment;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listener:Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    return-object v0
.end method

.method private handleMotifications(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Transaction;>;"
    if-eqz p1, :cond_0

    .line 391
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsTransactions:I

    .line 392
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    .line 394
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->setList(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->notifyDataSetChanged()V

    .line 396
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationTransactionListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationTransactionListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    move-result-object v0

    iget v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsTransactions:I

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;->onNotificationTransaction(I)V

    .line 401
    :cond_0
    return-void
.end method

.method private handleMotificationsMerchantPayment(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "merchantPaymentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/MerchantPaymet;>;"
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsMerchantPayments:I

    .line 408
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    .line 410
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->setList(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->notifyDataSetChanged()V

    .line 412
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationTransactionListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationMerchantPaymentListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;

    move-result-object v0

    iget v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsMerchantPayments:I

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;->onNotificationMerchantPayment(I)V

    .line 417
    :cond_0
    return-void
.end method

.method private handleMotificationsPendingVouchers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "pendingVouchersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/PendingVouchers;>;"
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsPendingVouchers:I

    .line 437
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 438
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    .line 439
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->setList(Ljava/util/List;)V

    .line 440
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->notifyDataSetChanged()V

    .line 441
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationPendingVouchersListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationPendingVouchersListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

    move-result-object v0

    iget v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsPendingVouchers:I

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;->onNotificationPendingVouchers(I)V

    .line 446
    :cond_0
    return-void
.end method

.method private handleNotificationsPendingTransactions(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsPendingTransactions:I

    .line 422
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 423
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    .line 424
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->setList(Ljava/util/List;)V

    .line 425
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;->notifyDataSetChanged()V

    .line 426
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationPendingTransactionsListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getNotificationPendingTransactionsListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

    move-result-object v0

    iget v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsPendingTransactions:I

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;->onNotificationPendingTransactions(I)V

    .line 430
    :cond_0
    return-void
.end method

.method private isNeedRefreshMerchantList()Z
    .locals 5

    .prologue
    .line 554
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getVisibleMenuItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 556
    .local v1, "item":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 557
    .local v0, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    if-eqz v0, :cond_0

    .line 559
    sget-object v3, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantInitiatedPayment:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 561
    const/4 v2, 0x1

    .line 566
    .end local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNeedRefreshPendingTransactions()Z
    .locals 6

    .prologue
    .line 592
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getVisibleItemsForRole()Ljava/util/ArrayList;

    move-result-object v2

    .line 594
    .local v2, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    .local v1, "item":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 597
    .local v0, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    if-eqz v0, :cond_0

    .line 599
    sget-object v4, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingTransactions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 601
    const/4 v3, 0x1

    .line 606
    .end local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isNeedRefreshPendingVouchers()Z
    .locals 1

    .prologue
    .line 612
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowPendingVouchers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedRefreshTransactions()Z
    .locals 6

    .prologue
    .line 572
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getVisibleItemsForRole()Ljava/util/ArrayList;

    move-result-object v2

    .line 574
    .local v2, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 576
    .local v1, "item":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 577
    .local v0, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    if-eqz v0, :cond_0

    .line 579
    sget-object v4, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOutConfirmation:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v5

    if-ne v4, v5, :cond_0

    .line 581
    const/4 v3, 0x1

    .line 586
    .end local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v1    # "item":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showWhatsNewPopUp()V
    .locals 6

    .prologue
    .line 662
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWhatsNewURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWhatsNewURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWhatsNewURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getLastPopUpURLImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 664
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    .line 667
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWhatsNewURL()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v1, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/WhatsNewPopup;

    .line 669
    .local v2, "popup":Lcom/tigo/mfsapp/model/WhatsNewPopup;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    new-instance v3, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;

    invoke-direct {v3}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;-><init>()V

    .line 674
    .local v3, "popupDialog":Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;
    const/4 v4, 0x1

    const v5, 0x7f0b0085

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->setStyle(II)V

    .line 675
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->setUrlImage(Ljava/lang/String;)V

    .line 676
    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->setPopup(Lcom/tigo/mfsapp/model/WhatsNewPopup;)V

    .line 677
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWhatsNewURL()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/common/AppPreferences;->setLastPopUpURLImage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "popup":Lcom/tigo/mfsapp/model/WhatsNewPopup;
    .end local v3    # "popupDialog":Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;
    :cond_0
    :goto_0
    return-void

    .line 682
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected createButtonList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    new-instance v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v1, 0x7f060278

    const v2, 0x7f0200da

    const-class v3, Lcom/tigo/mfsapp/balance/BalanceManager;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0200e7

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 219
    .local v0, "walletItem":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    const v2, 0x7f060056

    const v3, 0x7f0200f9

    const-class v4, Lcom/tigo/mfsapp/logs/LogsManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7f0200e7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 221
    .local v1, "myActivityItem":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v0    # "walletItem":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v1    # "myActivityItem":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getVisibleItemsForRole()Ljava/util/ArrayList;

    move-result-object v14

    .line 226
    .local v14, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 228
    .local v12, "item":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 230
    .local v11, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    if-eqz v11, :cond_1

    .line 232
    sget-object v3, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->CashOutConfirmation:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v12}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 234
    iget v3, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsTransactions:I

    invoke-virtual {v11, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    .line 245
    :cond_2
    :goto_1
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_3
    sget-object v3, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->MerchantPay:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v12}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 239
    iget v3, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsMerchantPayments:I

    invoke-virtual {v11, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    goto :goto_1

    .line 240
    :cond_4
    sget-object v3, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->PendingTransactions:Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    invoke-static {v12}, Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;->valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 242
    iget v3, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationsPendingTransactions:I

    invoke-virtual {v11, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    goto :goto_1

    .line 249
    .end local v11    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v12    # "item":Ljava/lang/String;
    :cond_5
    return-object v13
.end method

.method public getFacebookKeyHash()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 693
    :try_start_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 695
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 697
    .local v2, "signature":Landroid/content/pm/Signature;
    const-string v6, "SHA"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 698
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 699
    const-string v6, "KeyHash:"

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/tigo/mfsapp/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .line 706
    :cond_0
    :goto_1
    return-void

    .line 701
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getListener()Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->listener:Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    return-object v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "Main_Menu"

    return-object v0
.end method

.method public getNotificationMerchantPaymentListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationMerchantPaymentListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;

    return-object v0
.end method

.method public getNotificationPendingTransactionsListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationPendingTransactionsListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

    return-object v0
.end method

.method public getNotificationPendingVouchersListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationPendingVouchersListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

    return-object v0
.end method

.method public getNotificationTransactionListener()Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationTransactionListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 279
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MainFragment;->setAutoShowProgressDialog(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->submit()V

    .line 288
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onAttach(Landroid/app/Activity;)V

    .line 154
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->updateTitle()V

    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 97
    const v1, 0x7f03006a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->gridView:Landroid/widget/GridView;

    .line 99
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    .line 100
    new-instance v1, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/main/MainFragment;->listButtons:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    .line 102
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;-><init>(Lcom/tigo/mfsapp/main/MainFragment;Lcom/tigo/mfsapp/main/MainFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->gridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/tigo/mfsapp/main/MainFragment;->adapter:Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MainFragment;->showWhatsNewPopUp()V

    .line 132
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onDetach()V

    .line 256
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DETACH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public onReceiveBarredUserError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 457
    return-void
.end method

.method public onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 467
    return-void
.end method

.method public onReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 472
    return-void
.end method

.method public onReceiveInvalidSessionTokenError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 462
    return-void
.end method

.method public onReceiveMaintenanceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 477
    return-void
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 482
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 8
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 345
    instance-of v6, p2, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;

    if-eqz v6, :cond_1

    move-object v2, p2

    .line 347
    check-cast v2, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;

    .line 348
    .local v2, "entitiesResponse":Lcom/tigo/mfsapp/service/TigoEntitiesResponse;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;->getTigoEntities()Ljava/util/HashSet;

    move-result-object v5

    .line 350
    .local v5, "tigoEntities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->setTigoMSISDNs(Ljava/util/HashSet;)V

    .line 385
    .end local v2    # "entitiesResponse":Lcom/tigo/mfsapp/service/TigoEntitiesResponse;
    .end local v5    # "tigoEntities":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    instance-of v6, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v6, :cond_4

    move-object v4, p2

    .line 353
    check-cast v4, Lcom/tigo/mfsapp/service/LookupResponse;

    .line 354
    .local v4, "lookupResponse":Lcom/tigo/mfsapp/service/LookupResponse;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 355
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "ACCOUNT_NAME"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/LookupResponse;->getID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 357
    const-string v6, "ACCOUNT_ID"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/LookupResponse;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    :goto_1
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/LookupResponse;->getDocumentType()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 362
    const-string v6, "DOCUMENT_TYPE"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/LookupResponse;->getDocumentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 359
    :cond_3
    const-string v6, "ACCOUNT_ID"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 365
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "lookupResponse":Lcom/tigo/mfsapp/service/LookupResponse;
    :cond_4
    instance-of v6, p2, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;

    if-eqz v6, :cond_5

    move-object v3, p2

    .line 367
    check-cast v3, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;

    .line 368
    .local v3, "listresponse":Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tigo/mfsapp/main/MainFragment;->handleMotifications(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 370
    .end local v3    # "listresponse":Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;
    :cond_5
    instance-of v6, p2, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;

    if-eqz v6, :cond_6

    move-object v3, p2

    .line 372
    check-cast v3, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;

    .line 373
    .local v3, "listresponse":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;->getTransactionList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tigo/mfsapp/main/MainFragment;->handleMotificationsMerchantPayment(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 375
    .end local v3    # "listresponse":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;
    :cond_6
    instance-of v6, p2, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;

    if-eqz v6, :cond_7

    move-object v3, p2

    .line 377
    check-cast v3, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;

    .line 378
    .local v3, "listresponse":Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->getPendingVouchersList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/tigo/mfsapp/main/MainFragment;->handleMotificationsPendingVouchers(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 379
    .end local v3    # "listresponse":Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
    :cond_7
    instance-of v6, p2, Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;

    if-eqz v6, :cond_0

    move-object v0, p2

    .line 381
    check-cast v0, Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;

    .line 382
    .local v0, "countResponse":Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;->getCount()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/tigo/mfsapp/main/MainFragment;->handleNotificationsPendingTransactions(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 499
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 500
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshTransactionsNotification()V

    .line 501
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshMerchantNotification()V

    .line 502
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->refreshPendingVouchersNotification()V

    .line 504
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 509
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 510
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-boolean v4, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingTransactions:Z

    if-nez v4, :cond_1

    .line 295
    invoke-static {}, Lcom/tigo/mfsapp/utils/ContactUtils;->getContactData()Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    .local v0, "contactData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v1, "contactPhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 300
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "PARAM_PHONE"

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Lcom/tigo/mfsapp/service/Connection;->requestTigoEntities(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 308
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .end local v0    # "contactData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    .end local v1    # "contactPhones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-boolean v4, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingTransactions:Z

    if-eqz v4, :cond_2

    .line 313
    iput-boolean v6, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingTransactions:Z

    .line 314
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/tigo/mfsapp/service/Connection;->requestCashoutConfirmationList(Ljava/lang/String;)V

    .line 319
    .end local v3    # "token":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingMerchantList:Z

    if-eqz v4, :cond_3

    .line 321
    iput-boolean v6, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingMerchantList:Z

    .line 322
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 323
    .restart local v3    # "token":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/tigo/mfsapp/service/Connection;->requestMerchantPaymentList(Ljava/lang/String;)V

    .line 326
    .end local v3    # "token":Ljava/lang/String;
    :cond_3
    iget-boolean v4, p0, Lcom/tigo/mfsapp/main/MainFragment;->isGettingPendingTransactions:Z

    if-eqz v4, :cond_4

    .line 328
    iput-boolean v6, p0, Lcom/tigo/mfsapp/main/MainFragment;->isGettingPendingTransactions:Z

    .line 329
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 330
    .restart local v3    # "token":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/tigo/mfsapp/service/Connection;->requestPendingTransactionCount(Ljava/lang/String;)V

    .line 333
    .end local v3    # "token":Ljava/lang/String;
    :cond_4
    iget-boolean v4, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingPendingVouchers:Z

    if-eqz v4, :cond_5

    .line 335
    iput-boolean v6, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingPendingVouchers:Z

    .line 336
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 337
    .restart local v3    # "token":Ljava/lang/String;
    invoke-virtual {p1, v3, v6}, Lcom/tigo/mfsapp/service/Connection;->requestPendingVouchersList(Ljava/lang/String;I)V

    .line 340
    .end local v3    # "token":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 273
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 161
    return-void
.end method

.method public refreshMerchantNotification()V
    .locals 1

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MainFragment;->isNeedRefreshMerchantList()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingMerchantList:Z

    .line 525
    iget-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingMerchantList:Z

    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->submit()V

    .line 530
    :cond_0
    return-void
.end method

.method public refreshPendingTransactionNotification()V
    .locals 1

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MainFragment;->isNeedRefreshPendingTransactions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isGettingPendingTransactions:Z

    .line 535
    iget-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isGettingPendingTransactions:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->submit()V

    .line 540
    :cond_0
    return-void
.end method

.method public refreshPendingVouchersNotification()V
    .locals 1

    .prologue
    .line 544
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MainFragment;->isNeedRefreshPendingVouchers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingPendingVouchers:Z

    .line 545
    iget-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingPendingVouchers:Z

    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->submit()V

    .line 550
    :cond_0
    return-void
.end method

.method public refreshTransactionsNotification()V
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MainFragment;->isNeedRefreshTransactions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingTransactions:Z

    .line 515
    iget-boolean v0, p0, Lcom/tigo/mfsapp/main/MainFragment;->isgettingTransactions:Z

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->submit()V

    .line 520
    :cond_0
    return-void
.end method

.method public regenerateButtons()V
    .locals 4

    .prologue
    .line 143
    new-instance v0, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->createButtonList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 145
    .local v0, "adapter":Lcom/tigo/mfsapp/adapters/MainMenuButtonAdapter;
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->gridView:Landroid/widget/GridView;

    new-instance v2, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/main/MainFragment$MainItemClickListener;-><init>(Lcom/tigo/mfsapp/main/MainFragment;Lcom/tigo/mfsapp/main/MainFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 146
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MainFragment;->gridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->languageChanged()V

    .line 148
    return-void
.end method

.method public setListener(Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->listener:Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;

    .line 267
    return-void
.end method

.method public setNotificationMerchantPaymentListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;)V
    .locals 0
    .param p1, "notificationMerchantPaymentListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationMerchantPaymentListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;

    .line 638
    return-void
.end method

.method public setNotificationPendingTransactionsListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;)V
    .locals 0
    .param p1, "notificationPendingTransactionsListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

    .prologue
    .line 647
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationPendingTransactionsListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;

    .line 648
    return-void
.end method

.method public setNotificationPendingVouchersListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;)V
    .locals 0
    .param p1, "notificationPendingVouchersListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

    .prologue
    .line 657
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationPendingVouchersListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;

    .line 658
    return-void
.end method

.method public setNotificationTransactionListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;)V
    .locals 0
    .param p1, "notificationTransactionListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MainFragment;->notificationTransactionListener:Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;

    .line 628
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x1

    return v0
.end method
