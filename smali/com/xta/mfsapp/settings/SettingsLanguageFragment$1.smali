.class Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "SettingsLanguageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/tigo/mfsapp/model/Language;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;Landroid/content/Context;II[Lcom/tigo/mfsapp/model/Language;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # [Lcom/tigo/mfsapp/model/Language;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$1;->this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0d029d

    .line 48
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Language;

    .line 51
    .local v1, "language":Lcom/tigo/mfsapp/model/Language;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "defaultLanguageCode":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Language;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_0
    return-object v2

    .line 56
    :cond_0
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
