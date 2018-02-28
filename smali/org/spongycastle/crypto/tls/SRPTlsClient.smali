.class public abstract Lorg/spongycastle/crypto/tls/SRPTlsClient;
.super Ljava/lang/Object;
.source "SRPTlsClient.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# static fields
.field public static final EXT_SRP:Ljava/lang/Integer;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected identity:[B

.field protected password:[B

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/lang/Integer;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;[B[B)V
    .locals 1
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;
    .param p2, "identity"    # [B
    .param p3, "password"    # [B

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 30
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    .line 31
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->password:[B

    .line 32
    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1
    .param p1, "identity"    # [B
    .param p2, "password"    # [B

    .prologue
    .line 24
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/tls/SRPTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;[B[B)V

    .line 25
    return-void
.end method


# virtual methods
.method protected createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 4
    .param p1, "keyExchange"    # I

    .prologue
    .line 199
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->password:[B

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsSRPKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I[B[B)V

    return-object v0
.end method

.method public getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 166
    iget v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 193
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 171
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0xc01a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0xc022
        0xc01f
        0xc01c
        0xc021
        0xc01e
        0xc01b
        0xc020
        0xc01d
        0xc01a
    .end array-data
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 62
    .local v0, "clientExtensions":Ljava/util/Hashtable;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 63
    .local v1, "srpData":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->identity:[B

    invoke-static {v2, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 64
    sget-object v2, Lorg/spongycastle/crypto/tls/SRPTlsClient;->EXT_SRP:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCompressionMethod:I

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 151
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getCompressionMethods()[S
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [S

    aput-short v1, v0, v1

    return-object v0
.end method

.method public getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget v0, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 142
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 123
    :pswitch_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 133
    :goto_0
    return-object v0

    .line 128
    :pswitch_1
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 133
    :pswitch_2
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/SRPTlsClient;->createSRPKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0xc01a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 37
    return-void
.end method

.method public notifySecureRenegotiation(Z)V
    .locals 0
    .param p1, "secureRenegotiation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 109
    :cond_0
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0
    .param p1, "selectedCipherSuite"    # I

    .prologue
    .line 89
    iput p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCipherSuite:I

    .line 90
    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0
    .param p1, "selectedCompressionMethod"    # S

    .prologue
    .line 94
    iput p1, p0, Lorg/spongycastle/crypto/tls/SRPTlsClient;->selectedCompressionMethod:I

    .line 95
    return-void
.end method

.method public notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 2
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 80
    :cond_0
    return-void
.end method

.method public notifySessionID([B)V
    .locals 0
    .param p1, "sessionID"    # [B

    .prologue
    .line 85
    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;

    .prologue
    .line 114
    return-void
.end method
