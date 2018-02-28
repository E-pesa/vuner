.class public Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "ExceptionInfo.java"


# instance fields
.field private className:Ljava/lang/String;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    goto :goto_0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    .locals 2
    .param p0, "jsonObject"    # Lcom/newrelic/com/google/gson/JsonObject;

    .prologue
    .line 48
    new-instance v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;-><init>()V

    .line 50
    .local v0, "info":Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    .line 51
    const-string v1, "cause"

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    .line 53
    return-object v0
.end method


# virtual methods
.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 41
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v1, "name"

    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 42
    const-string v1, "cause"

    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 44
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->message:Ljava/lang/String;

    return-object v0
.end method
