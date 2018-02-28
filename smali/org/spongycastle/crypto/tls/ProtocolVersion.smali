.class public Lorg/spongycastle/crypto/tls/ProtocolVersion;
.super Ljava/lang/Object;
.source "ProtocolVersion.java"


# static fields
.field public static final SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field public static final TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;


# instance fields
.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x300

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 8
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x301

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 9
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x302

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 10
    new-instance v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/16 v1, 0x303

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    .line 17
    return-void
.end method

.method public static get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "major"    # I
    .param p1, "minor"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    packed-switch p0, :pswitch_data_0

    .line 62
    :goto_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 49
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->SSLv3:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 58
    :goto_1
    return-object v0

    .line 54
    :pswitch_2
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 56
    :pswitch_3
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv11:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 58
    :pswitch_4
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv12:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    goto :goto_1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 49
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 36
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFullVersion()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->version:I

    return v0
.end method
