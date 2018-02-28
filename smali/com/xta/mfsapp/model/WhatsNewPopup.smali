.class public Lcom/tigo/mfsapp/model/WhatsNewPopup;
.super Ljava/lang/Object;
.source "WhatsNewPopup.java"


# instance fields
.field AlertTexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field ID:Ljava/lang/String;

.field ImageURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public getAlertTexts()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->AlertTexts:Ljava/util/HashMap;

    return-object v0
.end method

.method public getButtonText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    const-string v2, ""

    .line 53
    .local v2, "resp":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->AlertTexts:Ljava/util/HashMap;

    const-string v4, "Button"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 56
    .local v0, "buttonMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "resp":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 61
    .restart local v2    # "resp":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "resp":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "resp":Ljava/lang/String;
    :cond_1
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->ImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    const-string v2, ""

    .line 68
    .local v2, "resp":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->AlertTexts:Ljava/util/HashMap;

    const-string v4, "Message"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 71
    .local v1, "messageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "resp":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 76
    .restart local v2    # "resp":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v2    # "resp":Ljava/lang/String;
    :goto_0
    return-object v2

    .restart local v2    # "resp":Ljava/lang/String;
    :cond_1
    const-string v3, "en"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 81
    const-string v1, ""

    .line 83
    .local v1, "resp":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->AlertTexts:Ljava/util/HashMap;

    const-string v4, "Title"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 86
    .local v2, "titleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 88
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "resp":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 91
    .restart local v1    # "resp":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .end local v1    # "resp":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "resp":Ljava/lang/String;
    :cond_1
    const-string v3, "en"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    goto :goto_0
.end method

.method public setAlertTexts(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "alertTexts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->AlertTexts:Ljava/util/HashMap;

    .line 47
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->ID:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tigo/mfsapp/model/WhatsNewPopup;->ImageURL:Ljava/lang/String;

    .line 37
    return-void
.end method
