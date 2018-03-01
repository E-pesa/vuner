.class public Lcom/tigo/mfsapp/model/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"


# instance fields
.field private active:Z

.field private code:Ljava/lang/String;

.field private days:Ljava/lang/String;

.field private desc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private end:Ljava/lang/String;

.field private name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private price:Ljava/lang/Double;

.field private start:Ljava/lang/String;

.field private until:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMappedLocale(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "composed":Ljava/lang/String;
    const-string v1, "getMappedLocale"

    const-string v2, "Locale %s, country %s, composed %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    .end local v0    # "composed":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "composed":Ljava/lang/String;
    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDays()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->days:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->desc:Ljava/util/HashMap;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->name:Ljava/util/HashMap;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getUntil()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Subscription;->until:Ljava/lang/String;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Subscription;->active:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Subscription;->active:Z

    .line 90
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->code:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setDays(Ljava/lang/String;)V
    .locals 0
    .param p1, "days"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->days:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDesc(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "desc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->desc:Ljava/util/HashMap;

    .line 60
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "end"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->end:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setName(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "name":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->name:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public setPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/Double;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->price:Ljava/lang/Double;

    .line 30
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->start:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setUntil(Ljava/lang/String;)V
    .locals 0
    .param p1, "until"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Subscription;->until:Ljava/lang/String;

    .line 80
    return-void
.end method
