.class final enum Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;
.super Ljava/lang/Enum;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/EncryptedStorge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

.field public static final enum IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

.field public static final enum SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

.field public static final enum SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    const-string v1, "SAVING"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    const-string v1, "SAVING_ALL"

    invoke-direct {v0, v1, v3}, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v4}, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 295
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->$VALUES:[Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

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
    .line 295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 295
    const-class v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    return-object v0
.end method

.method public static values()[Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;
    .locals 1

    .prologue
    .line 295
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->$VALUES:[Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    invoke-virtual {v0}, [Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    return-object v0
.end method
