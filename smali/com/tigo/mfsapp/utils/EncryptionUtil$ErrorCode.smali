.class public final enum Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
.super Ljava/lang/Enum;
.source "EncryptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

.field public static final enum ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

.field public static final enum NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

.field public static final enum SUCCESS:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->SUCCESS:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v3}, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    const-string v1, "NO_SUCH_ALGORTIHM"

    invoke-direct {v0, v1, v4}, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->SUCCESS:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->$VALUES:[Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

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
    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 160
    const-class v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->$VALUES:[Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    invoke-virtual {v0}, [Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    return-object v0
.end method
