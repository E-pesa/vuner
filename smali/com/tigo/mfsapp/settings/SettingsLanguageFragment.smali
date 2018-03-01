.class public Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SettingsLanguageFragment.java"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/Language;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;Lcom/tigo/mfsapp/model/Language;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/Language;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->pushToAnalytics(Lcom/tigo/mfsapp/model/Language;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->validateAmdSubmit()V

    return-void
.end method

.method private pushToAnalytics(Lcom/tigo/mfsapp/model/Language;)V
    .locals 4
    .param p1, "language"    # Lcom/tigo/mfsapp/model/Language;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 97
    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Change_Language_English_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "es_SV"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Change_Language_Spanish_SV_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "sw"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Change_Language_Swahili_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_3
    const-string v0, "en_TZ"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "ui_action"

    const-string v2, "button_press"

    const-string v3, "Change_Language_English_TZ_Button"

    invoke-static {v0, v1, v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "Change_Language"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 123
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v0, 0x7f0300be

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 42
    .local v6, "view":Landroid/view/View;
    const v0, 0x7f0d029b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->listView:Landroid/widget/ListView;

    .line 43
    new-instance v0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$1;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0300bf

    const v4, 0x7f0d029c

    invoke-static {}, Lcom/tigo/mfsapp/model/Language;->getAll()[Lcom/tigo/mfsapp/model/Language;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$1;-><init>(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;Landroid/content/Context;II[Lcom/tigo/mfsapp/model/Language;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 62
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;-><init>(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-object v6
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 135
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0d024b

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MainFragment;

    .line 136
    .local v2, "mainFragment":Lcom/tigo/mfsapp/main/MainFragment;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/main/MainFragment;->regenerateButtons()V

    .line 137
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 141
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    instance-of v4, v1, Lcom/tigo/mfsapp/balance/BalanceFragment;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 143
    check-cast v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    .line 144
    .local v0, "balanceFragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->regenerateMenu()V

    .line 152
    .end local v0    # "balanceFragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 128
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestChangeLanguage(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method
