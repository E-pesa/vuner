.class public Lcom/tigo/mfsapp/balance/BalanceFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;,
        Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_FRAGMENT_CHANGED:Ljava/lang/String; = "ACTION_FRAGMENT_CHANGED"

.field public static final ACTION_WALLET_CHANGED:Ljava/lang/String; = "ACTION_WALLET_CHANGED"

.field private static final INSTANCE_TOP_VISIBLE:Ljava/lang/String; = "INSTANCE_TOP_VISIBLE"

.field public static final PARAM_PIN:Ljava/lang/String; = "PARAM_PIN"


# instance fields
.field private PIN:Ljava/lang/String;

.field private adapterMenu:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private balanceDateView:Landroid/widget/TextView;

.field private balanceDateView1:Landroid/widget/TextView;

.field private balanceNameView:Landroid/widget/TextView;

.field private balanceNameView1:Landroid/widget/TextView;

.field private balanceValueView:Landroid/widget/TextView;

.field private balanceValueView1:Landroid/widget/TextView;

.field private btnMenu:Landroid/widget/ImageView;

.field private changedFragmentReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

.field private changedWalletReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;

.field private fee:F

.field private header:Landroid/view/View;

.field private isRegenerateChangeLanguage:Z

.field private mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

.field private refresh:Landroid/widget/Button;

.field private selectedWalletPosition:I

.field private spinner:Landroid/widget/Spinner;

.field private top:Landroid/view/View;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->PIN:Ljava/lang/String;

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->selectedWalletPosition:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->isRegenerateChangeLanguage:Z

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->fee:F

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/model/Wallet;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/Wallet;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateHeaders(Lcom/tigo/mfsapp/model/Wallet;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tigo/mfsapp/balance/BalanceFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->selectedWalletPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private alreadyExistsTotal(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "wallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Wallet;

    .line 307
    .local v0, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const/4 v1, 0x1

    .line 311
    .end local v0    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildHeaderMenu()V
    .locals 3

    .prologue
    .line 485
    new-instance v0, Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    .line 486
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_2

    .line 488
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    .line 493
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 495
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowMinistatement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    const v1, 0x7f06004c

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setModal(Z)V

    .line 502
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    new-instance v1, Lcom/tigo/mfsapp/balance/BalanceFragment$3;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/balance/BalanceFragment$3;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->btnMenu:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->btnMenu:Landroid/widget/ImageView;

    new-instance v1, Lcom/tigo/mfsapp/balance/BalanceFragment$4;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/balance/BalanceFragment$4;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->mPopupMenu:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->btnMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 557
    :cond_1
    return-void

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->adapterMenu:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    goto :goto_0
.end method

.method private getSumOfWallets()Lcom/tigo/mfsapp/model/Wallet;
    .locals 8

    .prologue
    const v7, 0x7f060267

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v0, "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "es_SV"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v4, "en"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    const v6, 0x7f060266

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v1, Lcom/tigo/mfsapp/model/Wallet;

    const-string v4, "0"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v0}, Lcom/tigo/mfsapp/model/Wallet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    .local v1, "res":Lcom/tigo/mfsapp/model/Wallet;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 324
    .local v2, "total":Ljava/lang/Float;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/Wallet;

    .line 326
    .local v3, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 327
    goto :goto_0

    .line 328
    .end local v3    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/Wallet;->setBalance(F)V

    .line 329
    return-object v1
.end method

.method private prepareReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 213
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 215
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v2, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/balance/BalanceFragment$1;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedWalletReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;

    .line 216
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ACTION_WALLET_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedWalletReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 220
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    new-instance v2, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/balance/BalanceFragment$1;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedFragmentReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

    .line 223
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    const-string v2, "ACTION_FRAGMENT_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedFragmentReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 226
    :cond_0
    return-void
.end method

.method private refreshGetSumOfWallets()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v2

    .line 337
    .local v2, "wallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 340
    .local v0, "total":Ljava/lang/Float;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Wallet;

    .line 342
    .local v1, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 349
    .end local v1    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Wallet;

    .line 351
    .restart local v1    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/Wallet;->setBalance(F)V

    .line 354
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    const v5, 0x7f060265

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/model/Wallet;->setName(Ljava/lang/String;)V

    goto :goto_1

    .line 359
    .end local v1    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_3
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/model/Parameters;->setWallets(Ljava/util/ArrayList;)V

    .line 361
    return-object v2
.end method

.method private updateHeaders(Lcom/tigo/mfsapp/model/Wallet;)V
    .locals 1
    .param p1, "wallet"    # Lcom/tigo/mfsapp/model/Wallet;

    .prologue
    .line 107
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateHeader(Lcom/tigo/mfsapp/model/Wallet;I)V

    .line 108
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateTop(Lcom/tigo/mfsapp/model/Wallet;I)V

    .line 109
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 385
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 386
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->closeAndGoHome()V

    .line 387
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->retrySubmit:Ljava/lang/Boolean;

    .line 375
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 376
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->closeAndGoHome()V

    .line 380
    :cond_0
    return-void
.end method

.method public hideHeader()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->header:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 434
    return-void
.end method

.method public hideTop()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->header:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 231
    const-string v0, "PARAM_PIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->PIN:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 176
    if-eqz p1, :cond_0

    .line 178
    const-string v0, "INSTANCE_TOP_VISIBLE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->hideHeader()V

    .line 181
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateHeaders(Lcom/tigo/mfsapp/model/Wallet;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->refresh:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->setSubmitButton(Landroid/view/View;)V

    .line 185
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->submit()V

    .line 187
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onClick(Landroid/view/View;)V

    .line 476
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Refresh_Balance_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d0099

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const v2, 0x7f03001f

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    .line 134
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->header:Landroid/view/View;

    .line 135
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    .line 136
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView1:Landroid/widget/TextView;

    .line 139
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView1:Landroid/widget/TextView;

    .line 140
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView1:Landroid/widget/TextView;

    .line 141
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->btnMenu:Landroid/widget/ImageView;

    .line 142
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->btnMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->buildHeaderMenu()V

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView:Landroid/widget/TextView;

    .line 161
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView:Landroid/widget/TextView;

    .line 163
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0094

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    .line 165
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->refresh:Landroid/widget/Button;

    .line 167
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    return-object v2

    .line 146
    :cond_0
    const v2, 0x7f030020

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    .line 147
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    const v3, 0x7f0d0093

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 148
    .local v0, "closeView":Landroid/view/View;
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 149
    .local v1, "refresh":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 150
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 151
    new-instance v2, Lcom/tigo/mfsapp/balance/BalanceFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/balance/BalanceFragment$1;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v0

    .line 246
    .local v0, "wallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isTotalBalanceInHeaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->alreadyExistsTotal(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 250
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getSumOfWallets()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0094

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    .line 262
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/tigo/mfsapp/adapters/WalletAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/tigo/mfsapp/adapters/WalletAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 265
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 266
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setBackgroundResource(I)V

    .line 269
    :cond_1
    iget v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->selectedWalletPosition:I

    if-ltz v1, :cond_2

    .line 271
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->selectedWalletPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->spinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/tigo/mfsapp/balance/BalanceFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/balance/BalanceFragment$2;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 294
    iget-boolean v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->isRegenerateChangeLanguage:Z

    if-nez v1, :cond_4

    .line 296
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 301
    :goto_1
    return-void

    .line 256
    :cond_3
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->refreshGetSumOfWallets()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 299
    :cond_4
    iput-boolean v4, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->isRegenerateChangeLanguage:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 570
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->top:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 572
    const-string v0, "INSTANCE_TOP_VISIBLE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 574
    :cond_0
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 192
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 193
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->prepareReceiver()V

    .line 194
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 201
    .local v0, "broadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedWalletReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedFragmentReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->changedFragmentReceiver:Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 208
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->PIN:Ljava/lang/String;

    iget v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->fee:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestBalance(Ljava/lang/String;Ljava/lang/Float;)V

    .line 238
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public regenerateMenu()V
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->isRegenerateChangeLanguage:Z

    .line 563
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->buildHeaderMenu()V

    .line 564
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->submit()V

    .line 565
    return-void
.end method

.method public setFee(F)V
    .locals 0
    .param p1, "fee"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->fee:F

    .line 81
    return-void
.end method

.method public updateBalance()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView:Landroid/widget/TextView;

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 410
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView1:Landroid/widget/TextView;

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    :goto_1
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_1

    .line 405
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public updateHeader(Lcom/tigo/mfsapp/model/Wallet;I)V
    .locals 2
    .param p1, "wallet"    # Lcom/tigo/mfsapp/model/Wallet;
    .param p2, "count"    # I

    .prologue
    .line 445
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView:Landroid/widget/TextView;

    const v1, 0x7f0602bb

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 418
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getDateFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getTimeFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "date":Ljava/lang/String;
    const v3, 0x7f060077

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "updateBalance":Ljava/lang/String;
    return-object v2
.end method

.method public updateTop(Lcom/tigo/mfsapp/model/Wallet;I)V
    .locals 3
    .param p1, "wallet"    # Lcom/tigo/mfsapp/model/Wallet;
    .param p2, "count"    # I

    .prologue
    .line 457
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView1:Landroid/widget/TextView;

    const v1, 0x7f0602bb

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceDateView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceValueView1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    :cond_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment;->balanceNameView1:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
