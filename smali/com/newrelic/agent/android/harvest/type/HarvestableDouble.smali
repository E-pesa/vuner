.class public Lcom/newrelic/agent/android/harvest/type/HarvestableDouble;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableValue;
.source "HarvestableDouble.java"


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableValue;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableDouble;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/type/HarvestableDouble;->value:D

    .line 19
    return-void
.end method


# virtual methods
.method public asJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/type/HarvestableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
