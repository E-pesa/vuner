.class Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;
.super Ljava/lang/Object;
.source "JDKPKCS12KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IgnoresCaseHashtable"
.end annotation


# instance fields
.field private keys:Ljava/util/Hashtable;

.field private orig:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    .line 1579
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;

    .prologue
    .line 1576
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>()V

    return-void
.end method


# virtual methods
.method public elements()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1612
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1613
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1615
    const/4 v1, 0x0

    .line 1618
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1583
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1584
    .local v1, "lower":Ljava/lang/String;
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1585
    .local v0, "k":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1587
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1590
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1601
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1602
    .local v0, "k":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1604
    const/4 v1, 0x0

    .line 1607
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->orig:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
