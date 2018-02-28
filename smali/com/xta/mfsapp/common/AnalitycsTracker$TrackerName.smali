.class public final enum Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;
.super Ljava/lang/Enum;
.source "AnalitycsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/common/AnalitycsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

.field public static final enum APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const-string v1, "APP_TRACKER"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    sget-object v1, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    aput-object v1, v0, v2

    sput-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->$VALUES:[Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    return-object v0
.end method

.method public static values()[Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->$VALUES:[Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    invoke-virtual {v0}, [Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    return-object v0
.end method
