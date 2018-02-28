.class public Lcom/tigo/mfsapp/banners/MfsBannerActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MfsBannerActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;
    }
.end annotation


# static fields
.field private static final DLG_SELF_REGISTER:Ljava/lang/String; = "DLG_SELF_REGISTER"


# instance fields
.field private bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

.field private button1:Landroid/widget/Button;

.field private button2:Landroid/widget/Button;

.field private button3:Landroid/widget/Button;

.field typeBanner:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->doLogin()V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->startRegisterNewUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->startMaps()V

    return-void
.end method

.method private activateExtraButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getNextAvailableButton()Landroid/widget/Button;

    move-result-object v0

    .line 314
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->getCarrusel()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getSelfRegistration()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const v1, 0x7f0600f8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 316
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 317
    new-instance v1, Lcom/tigo/mfsapp/banners/MfsBannerActivity$5;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$5;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getNextAvailableButton()Landroid/widget/Button;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->getCarrusel()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getFindNearestStore()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const v1, 0x7f060163

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 331
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 332
    new-instance v1, Lcom/tigo/mfsapp/banners/MfsBannerActivity$6;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$6;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private doLogin()V
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->setResult(I)V

    .line 358
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->finish()V

    .line 359
    return-void
.end method

.method private getNextAvailableButton()Landroid/widget/Button;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button3:Landroid/widget/Button;

    goto :goto_0
.end method

.method private hideAllButtons()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 210
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    return-void
.end method

.method private prepareLoginButton()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 290
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/banners/MfsBannerActivity$3;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$3;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    return-void
.end method

.method private prepareRegisterButton()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const v1, 0x7f0600f9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 302
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/banners/MfsBannerActivity$4;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$4;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    return-void
.end method

.method private showRegistrationDialog()V
    .locals 5

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 386
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 387
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "DLG_SELF_REGISTER"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 388
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 391
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 393
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->newInstance(Ljava/lang/String;)Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;

    move-result-object v3

    const-string v4, "DLG_SELF_REGISTER"

    invoke-virtual {v3, v0, v4}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 395
    return-void
.end method

.method private startMaps()V
    .locals 3

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/maps/MapsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method

.method private startRegisterNewUser()V
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->setResult(I)V

    .line 366
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->finish()V

    .line 370
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LOCAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    :goto_1
    return-void

    .line 367
    .end local v0    # "i":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URLPOPUP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->showRegistrationDialog()V

    goto :goto_0

    .line 375
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/registernewusers/RegisterNewUserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    .restart local v0    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected doRegisterDevice()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->setResult(I)V

    .line 345
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->finish()V

    .line 346
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->requestWindowFeature(I)Z

    .line 97
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 99
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->setContentView(I)V

    .line 101
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BANNER_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->typeBanner:I

    .line 103
    const v2, 0x7f0d00a4

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/banners/BannerWidget;

    iput-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    .line 104
    const v2, 0x7f0d00a7

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    .line 105
    const v2, 0x7f0d00a9

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    .line 106
    const v2, 0x7f0d00aa

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button3:Landroid/widget/Button;

    .line 109
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v1, "rel_btn":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 111
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    const/16 v2, 0xf

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2, p0}, Lcom/tigo/mfsapp/banners/BannerWidget;->setPageSelectedListener(Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;)V

    .line 116
    iget v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->typeBanner:I

    packed-switch v2, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Carrusels;->getRegister()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->setCarrusel(Lcom/tigo/mfsapp/model/Carrusel;)V

    .line 120
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->initWidget()V

    .line 121
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    .line 122
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getRegister()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->prepareRegisterButton()V

    .line 124
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->activateExtraButtons()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Carrusels;->getLogin()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->setCarrusel(Lcom/tigo/mfsapp/model/Carrusel;)V

    .line 131
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->initWidget()V

    .line 133
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getCarrusel()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getFindNearestStore()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getCarrusel()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getSelfRegistration()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 137
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    .line 138
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getLogin()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->prepareLoginButton()V

    .line 140
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->activateExtraButtons()V

    goto/16 :goto_0

    .line 147
    :pswitch_2
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->setCarrusel(Lcom/tigo/mfsapp/model/Carrusel;)V

    .line 148
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->initWidget()V

    .line 149
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 150
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/banners/MfsBannerActivity$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$1;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 163
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    .line 167
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 168
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_3
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->setCarrusel(Lcom/tigo/mfsapp/model/Carrusel;)V

    .line 178
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->bannerWidget:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->initWidget()V

    .line 179
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const v3, 0x7f0600f7

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/banners/MfsBannerActivity$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$2;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button2:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 192
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button3:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 193
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "W"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    .line 197
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 198
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPageSelectedListener(II)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 226
    iget v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->typeBanner:I

    packed-switch v0, :pswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 229
    :pswitch_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getRegister()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->prepareRegisterButton()V

    .line 233
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->activateExtraButtons()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    goto :goto_0

    .line 244
    :pswitch_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getLogin()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_2

    .line 246
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->prepareLoginButton()V

    .line 248
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->activateExtraButtons()V

    goto :goto_0

    .line 251
    :cond_2
    invoke-direct {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->hideAllButtons()V

    goto :goto_0

    .line 261
    :pswitch_2
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_3

    .line 263
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 273
    :pswitch_3
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    add-int/lit8 v0, p1, 0x1

    if-ne v0, p2, :cond_4

    .line 275
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 277
    :cond_4
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->button1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 219
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    return-void
.end method
