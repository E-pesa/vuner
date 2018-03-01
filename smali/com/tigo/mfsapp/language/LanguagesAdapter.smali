.class public Lcom/tigo/mfsapp/language/LanguagesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LanguagesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/Language;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private onLanguageSelectedListener:Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const v0, 0x1020014

    invoke-static {}, Lcom/tigo/mfsapp/model/Language;->getAll()[Lcom/tigo/mfsapp/model/Language;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getOnLanguageSelectedListener()Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/language/LanguagesAdapter;->onLanguageSelectedListener:Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/Language;

    .line 41
    .local v3, "language":Lcom/tigo/mfsapp/model/Language;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mfs_select_language_button_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Language;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "resourceName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "layout"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 43
    .local v2, "id":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    const v6, 0x7f0d0226

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Language;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const v6, 0x7f0d0225

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "clickeable":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v6, 0x7f0d0224

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 56
    .local v4, "orLabel":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/language/LanguagesAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_0

    .line 58
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :goto_0
    return-object p2

    .line 61
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Language;

    .line 72
    .local v0, "language":Lcom/tigo/mfsapp/model/Language;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Language;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->setApplicationLanguage(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/tigo/mfsapp/language/LanguagesAdapter;->onLanguageSelectedListener:Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/tigo/mfsapp/language/LanguagesAdapter;->onLanguageSelectedListener:Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;

    invoke-interface {v1, v0}, Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;->languageSelected(Lcom/tigo/mfsapp/model/Language;)V

    .line 79
    :cond_0
    return-void
.end method

.method public setOnLanguageSelectedListener(Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;)V
    .locals 0
    .param p1, "onLanguageSelectedListener"    # Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/language/LanguagesAdapter;->onLanguageSelectedListener:Lcom/tigo/mfsapp/language/LanguagesAdapter$OnLanguageSelectedListener;

    .line 84
    return-void
.end method
