.class public Lcom/tigo/mfsapp/model/ActivityLogInfo;
.super Ljava/lang/Object;
.source "ActivityLogInfo.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# instance fields
.field private DateTime:Ljava/lang/String;

.field private Detail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Model:Ljava/lang/String;

.field private OperationType:Ljava/lang/String;

.field private localizedOperationType:Ljava/lang/String;

.field private opened:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->opened:Z

    return-void
.end method

.method private localizedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activity_log_info_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 111
    .local v1, "stringid":I
    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    :cond_0
    return-object p1
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->DateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDetail()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Detail:Ljava/util/Map;

    return-object v0
.end method

.method public getFormattedDetail()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 73
    iget-object v5, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Detail:Ljava/util/Map;

    if-eqz v5, :cond_3

    .line 75
    const-string v1, ""

    .line 76
    .local v1, "formattedDetail":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Detail:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 77
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "affectsBalance"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "value":Ljava/lang/String;
    const-string v3, ""

    .line 86
    .local v3, "newentry":Ljava/lang/String;
    const-string v6, "WalletID"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->getWalletName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->isOneWallet()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v6, "%s: %s\n"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->localizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 97
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    :cond_2
    const-string v6, "%s: %s\n"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->localizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 104
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "formattedDetail":Ljava/lang/String;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "newentry":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    :cond_4
    return-object v1
.end method

.method public getLocalizedOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->localizedOperationType:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Model:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->OperationType:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->opened:Z

    return v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->DateTime:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDetail(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "detail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Detail:Ljava/util/Map;

    .line 64
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->Model:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->opened:Z

    .line 117
    return-void
.end method

.method public setOperationType(Ljava/lang/String;)V
    .locals 1
    .param p1, "operationType"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->OperationType:Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->localizedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/ActivityLogInfo;->localizedOperationType:Ljava/lang/String;

    .line 54
    return-void
.end method
