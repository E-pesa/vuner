.class public Lcom/tigo/mfsapp/model/Title;
.super Ljava/lang/Object;
.source "Title.java"


# instance fields
.field private en:Ljava/lang/String;

.field private esSV:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Title;->en:Ljava/lang/String;

    return-object v0
.end method

.method public getEsSV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Title;->esSV:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Title;->en:Ljava/lang/String;

    .line 48
    :goto_0
    return-object v1

    .line 41
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "esSV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Title;->esSV:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Title;->en:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "en"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Title;->en:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setEsSV(Ljava/lang/String;)V
    .locals 0
    .param p1, "esSV"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Title;->esSV:Ljava/lang/String;

    .line 29
    return-void
.end method
