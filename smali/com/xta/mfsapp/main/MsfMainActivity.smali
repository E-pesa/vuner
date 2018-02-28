.class public Lcom/tigo/mfsapp/main/MsfMainActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MsfMainActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;
    }
.end annotation


# static fields
.field public static PICK_CONTACT:I = 0x0

.field public static REQUEST_CAMERA:I = 0x0

.field public static REQUEST_GALLERY:I = 0x0

.field private static final SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static back_pressed:J


# instance fields
.field private adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

.field private balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

.field private listMenuLeft:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/widget/ListView;

.field private mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private notificationsMerchantPayment:I

.field private notificationsPendingTransactions:I

.field private notificationsPendingVouchers:I

.field private notificationsTransaction:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput v0, Lcom/tigo/mfsapp/main/MsfMainActivity;->PICK_CONTACT:I

    .line 80
    const/4 v0, 0x1

    sput v0, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_CAMERA:I

    .line 81
    const/4 v0, 0x2

    sput v0, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_GALLERY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/main/MsfMainActivity;)Lcom/tigo/mfsapp/balance/BalanceFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/main/MsfMainActivity;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->selectItem(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/main/MsfMainActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;
    .param p1, "x1"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->pushToAnalytics(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/main/MsfMainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->onBackPressedSuper()V

    return-void
.end method

.method private createLeftMenu()V
    .locals 3

    .prologue
    .line 218
    const v0, 0x7f0d024c

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerList:Landroid/widget/ListView;

    .line 220
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    .line 223
    new-instance v0, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    .line 225
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerList:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/main/MsfMainActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 228
    return-void
.end method

.method private doLogin()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginManager;-><init>()V

    .line 362
    .local v0, "loginManager":Lcom/tigo/mfsapp/login/LoginManager;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnSession(Ljava/lang/Boolean;)V

    .line 363
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->finish()V

    .line 364
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 366
    return-void
.end method

.method private onBackPressedSuper()V
    .locals 0

    .prologue
    .line 642
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 643
    return-void
.end method

.method private pushToAnalytics(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 371
    instance-of v0, p1, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;

    if-eqz v0, :cond_1

    .line 373
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Send_Money"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    instance-of v0, p1, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    if-eqz v0, :cond_2

    .line 377
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Topup"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    instance-of v0, p1, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    if-eqz v0, :cond_3

    .line 381
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Bill_Pay"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_3
    instance-of v0, p1, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    if-eqz v0, :cond_4

    .line 385
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Bank_Tansfer"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_4
    instance-of v0, p1, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;

    if-eqz v0, :cond_5

    .line 389
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Cashout"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_5
    instance-of v0, p1, Lcom/tigo/mfsapp/logs/LogsManager;

    if-eqz v0, :cond_6

    .line 393
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Activity_Log"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_6
    instance-of v0, p1, Lcom/tigo/mfsapp/contactus/ContactUsFragment;

    if-eqz v0, :cond_7

    .line 397
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Contact_Us"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_7
    instance-of v0, p1, Lcom/tigo/mfsapp/settings/SettingsFragment;

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "ui_action"

    const-string v1, "button_press"

    const-string v2, "Side_Menu_Settings"

    invoke-static {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private selectItem(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 292
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 297
    .local v0, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getFragmentClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 299
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 301
    .local v1, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/tigo/mfsapp/main/MsfMainActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity$3;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/adapters/MainButtonInfo;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 357
    .end local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 325
    .restart local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    :cond_1
    const v3, 0x7f0601af

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 330
    const v3, 0x7f06011c

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 332
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->deregisterThisDevices()V

    goto :goto_0

    .line 335
    :cond_2
    const v3, 0x7f060178

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 337
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "BANNER_TYPE"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 342
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const v3, 0x7f060179

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 344
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "BANNER_TYPE"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 353
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->doLogin()V

    goto :goto_0
.end method

.method private setBalanceListener(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 445
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/tigo/mfsapp/common/BaseFormFragment;

    if-eqz v0, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBalanceListener Fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 448
    check-cast p1, Lcom/tigo/mfsapp/common/BaseFormFragment;

    .end local p1    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {p1, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->setBalanceListener(Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;)V

    .line 450
    :cond_0
    return-void
.end method


# virtual methods
.method public clearFragments()V
    .locals 4

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 477
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 479
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v1

    .line 480
    .local v1, "rootFragment":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 482
    .end local v1    # "rootFragment":I
    :cond_0
    return-void
.end method

.method protected createButtonList()Ljava/util/List;
    .locals 5
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
    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getMainMenuMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    .local v2, "litr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tigo/mfsapp/adapters/MainButtonInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    .line 237
    .local v0, "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    const v3, 0x7f060082

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 239
    iget v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsTransaction:I

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    .line 250
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isSeparator()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 252
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_2
    const v3, 0x7f060183

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 242
    iget v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsMerchantPayment:I

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    goto :goto_1

    .line 243
    :cond_3
    const v3, 0x7f0601d1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 245
    iget v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsPendingVouchers:I

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    goto :goto_1

    .line 246
    :cond_4
    const v3, 0x7f0601c0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getTitle()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 248
    iget v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsPendingTransactions:I

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->setNotification(I)V

    goto :goto_1

    .line 253
    :cond_5
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getLeftMenuImage()I

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 260
    .end local v0    # "buttonInfo":Lcom/tigo/mfsapp/adapters/MainButtonInfo;
    :cond_6
    return-object v1
.end method

.method protected deregisterThisDevices()V
    .locals 1

    .prologue
    .line 686
    new-instance v0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;-><init>()V

    .line 688
    .local v0, "fragment":Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 690
    return-void
.end method

.method public dialogBackConfirmation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 605
    new-instance v1, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;-><init>()V

    .line 607
    .local v1, "yesNoDialog":Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 609
    .local v0, "currentapiVersion":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 611
    const v2, 0x7f0b0085

    invoke-virtual {v1, v3, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setStyle(II)V

    .line 614
    :cond_0
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 615
    const v2, 0x7f060120

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setText(Ljava/lang/String;)V

    .line 616
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setCancelWhite(Ljava/lang/Boolean;)V

    .line 617
    new-instance v2, Lcom/tigo/mfsapp/main/MsfMainActivity$4;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/main/MsfMainActivity$4;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setYesNoListener(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 636
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 638
    return-void
.end method

.method public getVisibleFragment()Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 648
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    .line 650
    .local v2, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 652
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 654
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 670
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .line 661
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 663
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v0, Lcom/tigo/mfsapp/main/MainFragment;

    if-nez v4, :cond_2

    instance-of v4, v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    if-nez v4, :cond_2

    goto :goto_0

    .line 670
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public languageChanged()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->notifyDataSetChanged()V

    .line 493
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getVisibleFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 566
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 601
    :goto_0
    return-void

    .line 572
    :cond_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/tigo/mfsapp/main/MainFragment;

    if-eqz v1, :cond_2

    .line 575
    sget-wide v2, Lcom/tigo/mfsapp/main/MsfMainActivity;->back_pressed:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 577
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_0

    .line 582
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060159

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/tigo/mfsapp/main/MsfMainActivity;->back_pressed:J

    goto :goto_0

    .line 589
    :cond_2
    if-eqz v0, :cond_4

    instance-of v1, v0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    if-eqz v1, :cond_4

    .line 593
    :cond_3
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->dialogBackConfirmation()V

    goto :goto_0

    .line 599
    :cond_4
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onChange(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->clearFragments()V

    .line 471
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 472
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 464
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 465
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const-string v1, "sessionToken"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->setSessionToken(Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    const v0, 0x7f0300a6

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->setContentView(I)V

    .line 109
    const v0, 0x7f0d0248

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 111
    invoke-direct {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createLeftMenu()V

    .line 113
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 115
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "logo"

    const-string v2, "drawable"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 116
    .local v10, "logo":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 121
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0d024b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/main/MainFragment;

    .line 122
    .local v6, "mainFragment":Lcom/tigo/mfsapp/main/MainFragment;
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/main/MainFragment;->setListener(Lcom/tigo/mfsapp/main/MainFragment$FragmentChangeListener;)V

    .line 123
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/main/MainFragment;->setNotificationTransactionListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;)V

    .line 124
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/main/MainFragment;->setNotificationMerchantPaymentListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;)V

    .line 125
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/main/MainFragment;->setNotificationPendingVouchersListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;)V

    .line 126
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/main/MainFragment;->setNotificationPendingTransactionsListener(Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;)V

    .line 128
    new-instance v0, Lcom/tigo/mfsapp/main/MsfMainActivity$1;

    iget-object v3, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v4, 0x7f0601b8

    const v5, 0x7f06010b

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/tigo/mfsapp/main/MsfMainActivity$1;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;IILcom/tigo/mfsapp/main/MainFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 153
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 155
    if-nez p1, :cond_3

    .line 157
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    .line 161
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v8

    .line 162
    .local v8, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v8}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v9

    .line 163
    .local v9, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v0, 0x7f0d0249

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v9, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 164
    invoke-virtual {v9}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 182
    .end local v8    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v9    # "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/tigo/mfsapp/main/MsfMainActivity$2;

    invoke-direct {v1, p0, v6}, Lcom/tigo/mfsapp/main/MsfMainActivity$2;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/main/MainFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    .line 210
    new-instance v11, Landroid/support/v7/widget/PopupMenu;

    const/4 v0, 0x0

    invoke-direct {v11, p0, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 212
    .local v11, "popup":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v11}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 214
    return-void

    .line 168
    .end local v11    # "popup":Landroid/support/v7/widget/PopupMenu;
    :cond_2
    const v0, 0x7f0d0249

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 170
    :cond_3
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 174
    .local v7, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v1, v7, Lcom/tigo/mfsapp/balance/BalanceFragment;

    if-eqz v1, :cond_4

    .line 176
    check-cast v7, Lcom/tigo/mfsapp/balance/BalanceFragment;

    .end local v7    # "fragment":Landroid/support/v4/app/Fragment;
    iput-object v7, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 267
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onFinishChangeFragment()V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->switchBalanceLayout()V

    .line 499
    return-void
.end method

.method public onNotificationMerchantPayment(I)V
    .locals 2
    .param p1, "notifications"    # I

    .prologue
    .line 529
    iput p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsMerchantPayment:I

    .line 530
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 531
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    .line 532
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->setList(Ljava/util/List;)V

    .line 533
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->notifyDataSetChanged()V

    .line 535
    return-void
.end method

.method public onNotificationPendingTransactions(I)V
    .locals 2
    .param p1, "notifications"    # I

    .prologue
    .line 540
    iput p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsPendingTransactions:I

    .line 541
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 542
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    .line 543
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->setList(Ljava/util/List;)V

    .line 544
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->notifyDataSetChanged()V

    .line 545
    return-void
.end method

.method public onNotificationPendingVouchers(I)V
    .locals 2
    .param p1, "notifications"    # I

    .prologue
    .line 550
    iput p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsPendingVouchers:I

    .line 551
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 552
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    .line 553
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->setList(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->notifyDataSetChanged()V

    .line 556
    return-void
.end method

.method public onNotificationTransaction(I)V
    .locals 2
    .param p1, "notifications"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->notificationsTransaction:I

    .line 519
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->createButtonList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    .line 521
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->listMenuLeft:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->setList(Ljava/util/List;)V

    .line 522
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->adapter:Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/LeftMenuAdapter;->notifyDataSetChanged()V

    .line 524
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    const/4 v0, 0x1

    .line 278
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->save()V

    .line 505
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onPause()V

    .line 506
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 457
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->mDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 458
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 695
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    .line 697
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 511
    const-string v0, "sessionToken"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 513
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 410
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 411
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "keepBackStack"    # Z

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 416
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 420
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    instance-of v3, p1, Lcom/tigo/mfsapp/common/BaseFragment;

    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Lcom/tigo/mfsapp/common/BaseFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/common/BaseFragment;->isNoneVisual()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 429
    :goto_0
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 430
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 432
    :cond_1
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 433
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {p0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 438
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReplaceFragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 441
    return-void

    .line 425
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const v3, 0x7f0d024a

    invoke-virtual {v1, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 426
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->setBalanceListener(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public switchBalanceLayout()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity;->balanceFragment:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->hideHeader()V

    .line 488
    :cond_0
    return-void
.end method
