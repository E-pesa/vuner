.class public Lcom/tigo/mfsapp/model/Language;
.super Ljava/lang/Object;
.source "Language.java"


# instance fields
.field private code:Ljava/lang/String;

.field private flag:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Language;->code:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/tigo/mfsapp/model/Language;->name:Ljava/lang/String;

    .line 20
    iput p3, p0, Lcom/tigo/mfsapp/model/Language;->flag:I

    .line 21
    return-void
.end method

.method public static getAll()[Lcom/tigo/mfsapp/model/Language;
    .locals 12

    .prologue
    const v11, 0x7f060040

    const v10, 0x7f06006a

    const v9, 0x7f02003f

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Language;>;"
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getSupportedLanguages()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_8

    aget-object v0, v3, v2

    .line 58
    .local v0, "language":Ljava/lang/String;
    const-string v5, "en"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "en"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f02012e

    invoke-direct {v5, v6, v7, v8}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    const-string v5, "es_SV"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "es_SV"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020090

    invoke-direct {v5, v6, v7, v8}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 62
    :cond_2
    const-string v5, "es_HN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "es_HN"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f02009b

    invoke-direct {v5, v6, v7, v8}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    :cond_3
    const-string v5, "es_BO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "es_BO"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_4
    const-string v5, "ay"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "ay"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    const v8, 0x7f0602fc

    invoke-virtual {v7, v8}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_5
    const-string v5, "qu"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 69
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "qu"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    const v8, 0x7f060304

    invoke-virtual {v7, v8}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v9}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 70
    :cond_6
    const-string v5, "sw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 71
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "sw"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    const v8, 0x7f06025d

    invoke-virtual {v7, v8}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020093

    invoke-direct {v5, v6, v7, v8}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 72
    :cond_7
    const-string v5, "en_TZ"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    new-instance v5, Lcom/tigo/mfsapp/model/Language;

    const-string v6, "en_TZ"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f020094

    invoke-direct {v5, v6, v7, v8}, Lcom/tigo/mfsapp/model/Language;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 75
    .end local v0    # "language":Ljava/lang/String;
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/tigo/mfsapp/model/Language;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/tigo/mfsapp/model/Language;

    return-object v2
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Language;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/tigo/mfsapp/model/Language;->flag:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Language;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Language;->code:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/tigo/mfsapp/model/Language;->flag:I

    .line 51
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Language;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Language;->name:Ljava/lang/String;

    return-object v0
.end method
