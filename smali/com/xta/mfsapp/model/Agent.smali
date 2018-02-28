.class public Lcom/tigo/mfsapp/model/Agent;
.super Lcom/tigo/mfsapp/model/TigoEntity;
.source "Agent.java"


# static fields
.field private static final AGENTS_RECENT:Ljava/lang/String; = "agents.recent"

.field private static RECENT_AGENTS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Agent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/model/TigoEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static declared-synchronized SaveAll()V
    .locals 6

    .prologue
    .line 55
    const-class v5, Lcom/tigo/mfsapp/model/Agent;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 57
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/tigo/mfsapp/model/Agent$2;

    invoke-direct {v4}, Lcom/tigo/mfsapp/model/Agent$2;-><init>()V

    .line 59
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Agent$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 60
    .local v2, "listOfObject":Ljava/lang/reflect/Type;
    sget-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 63
    .local v3, "s":Ljava/lang/String;
    :try_start_1
    const-string v4, "agents.recent"

    invoke-static {v4, v3}, Lcom/tigo/mfsapp/utils/FileUtils;->saveTextFileContent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "listOfObject":Ljava/lang/reflect/Type;
    .end local v3    # "s":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized getRecents()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Agent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-class v5, Lcom/tigo/mfsapp/model/Agent;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 28
    const-string v4, "agents.recent"

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/FileUtils;->getTextFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "jsonString":Ljava/lang/String;
    const-string v4, ""

    if-eq v2, v4, :cond_1

    .line 31
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/tigo/mfsapp/model/Agent$1;

    invoke-direct {v4}, Lcom/tigo/mfsapp/model/Agent$1;-><init>()V

    .line 33
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Agent$1;->getType()Ljava/lang/reflect/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 36
    .local v3, "listOfAgentObject":Ljava/lang/reflect/Type;
    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sput-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "listOfAgentObject":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 38
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "listOfAgentObject":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/app/MfsApp;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "agents.recent"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "listOfAgentObject":Ljava/lang/reflect/Type;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 45
    :cond_1
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/tigo/mfsapp/model/Agent;->RECENT_AGENTS:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/Agent;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
