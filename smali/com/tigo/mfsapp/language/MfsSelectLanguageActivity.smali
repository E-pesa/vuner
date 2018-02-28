.class public Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;
.super Landroid/app/Activity;
.source "MfsSelectLanguageActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;


# instance fields
.field private adapter:Lcom/tigo/mfsapp/language/LanguagesAdapter;

.field private list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public languageSelected(Lcom/tigo/mfsapp/model/Language;)V
    .locals 1
    .param p1, "language"    # Lcom/tigo/mfsapp/model/Language;

    .prologue
    .line 38
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->setResult(I)V

    .line 39
    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->finish()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->requestWindowFeature(I)Z

    .line 26
    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 27
    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->setContentView(I)V

    .line 29
    const v0, 0x7f0d0223

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->list:Landroid/widget/ListView;

    .line 30
    new-instance v0, Lcom/tigo/mfsapp/language/LanguagesAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/language/LanguagesAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->adapter:Lcom/tigo/mfsapp/language/LanguagesAdapter;

    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->adapter:Lcom/tigo/mfsapp/language/LanguagesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;->adapter:Lcom/tigo/mfsapp/language/LanguagesAdapter;

    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->setOnLanguageSelectedListener(Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;)V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method
