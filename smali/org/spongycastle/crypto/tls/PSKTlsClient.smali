.class public Lorg/spongycastle/crypto/tls/PSKTlsClient;
.super Ljava/lang/Object;
.source "PSKTlsClient.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;
    .param p2, "pskIdentity"    # Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 24
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 1
    .param p1, "pskIdentity"    # Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .prologue
    .line 18
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/tls/PSKTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;Lorg/spongycastle/crypto/tls/TlsPSKIdentity;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 3
    .param p1, "keyExchange"    # I

    .prologue
    .line 190
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-direct {v0, v1, p1, v2}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;ILorg/spongycastle/crypto/tls/TlsPSKIdentity;)V

    return-object v0
.end method

.method public getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

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

    .line 157
    iget v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 184
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 162
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 168
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x91
        0x90
        0x8f
        0x95
        0x94
        0x93
        0x8d
        0x8c
        0x8b
    .end array-data
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 29
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
    .line 139
    iget v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCompressionMethod:I

    packed-switch v0, :pswitch_data_0

    .line 151
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 142
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 139
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

    .line 58
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
    .line 104
    iget v0, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 109
    :pswitch_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 114
    :pswitch_2
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_3
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/PSKTlsClient;->createPSKKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 35
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
    .line 86
    if-nez p1, :cond_0

    .line 96
    :cond_0
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0
    .param p1, "selectedCipherSuite"    # I

    .prologue
    .line 76
    iput p1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCipherSuite:I

    .line 77
    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0
    .param p1, "selectedCompressionMethod"    # S

    .prologue
    .line 81
    iput p1, p0, Lorg/spongycastle/crypto/tls/PSKTlsClient;->selectedCompressionMethod:I

    .line 82
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
    .line 63
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 67
    :cond_0
    return-void
.end method

.method public notifySessionID([B)V
    .locals 0
    .param p1, "sessionID"    # [B

    .prologue
    .line 72
    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;

    .prologue
    .line 100
    return-void
.end method
