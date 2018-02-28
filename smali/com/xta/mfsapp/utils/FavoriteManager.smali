.class public Lcom/tigo/mfsapp/utils/FavoriteManager;
.super Ljava/lang/Object;
.source "FavoriteManager.java"


# static fields
.field private static instance:Lcom/tigo/mfsapp/utils/FavoriteManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/tigo/mfsapp/utils/FavoriteManager;->instance:Lcom/tigo/mfsapp/utils/FavoriteManager;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/tigo/mfsapp/utils/FavoriteManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/utils/FavoriteManager;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/utils/FavoriteManager;->instance:Lcom/tigo/mfsapp/utils/FavoriteManager;

    .line 20
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/utils/FavoriteManager;->instance:Lcom/tigo/mfsapp/utils/FavoriteManager;

    return-object v0
.end method


# virtual methods
.method public getAll(Ljava/lang/Class;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V
    .locals 1
    .param p2, "favoriteKey"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->asyncLoadAll(Ljava/lang/String;Ljava/lang/Class;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 30
    return-void
.end method

.method public savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 1
    .param p2, "favoriteKey"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "favorites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->asyncSaveAll(Ljava/lang/String;Ljava/util/ArrayList;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 35
    return-void
.end method
