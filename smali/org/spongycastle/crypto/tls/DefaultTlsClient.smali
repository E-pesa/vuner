.class public abstract Lorg/spongycastle/crypto/tls/DefaultTlsClient;
.super Ljava/lang/Object;
.source "DefaultTlsClient.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClient;


# instance fields
.field protected cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected selectedCipherSuite:I

.field protected selectedCompressionMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/DefaultTlsCipherFactory;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;-><init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsCipherFactory;)V
    .locals 0
    .param p1, "cipherFactory"    # Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    .line 23
    return-void
.end method


# virtual methods
.method protected createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .param p1, "keyExchange"    # I

    .prologue
    .line 234
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHEKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method protected createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .param p1, "keyExchange"    # I

    .prologue
    .line 229
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsDHKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method protected createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .param p1, "keyExchange"    # I

    .prologue
    .line 244
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsECDHEKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method protected createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2
    .param p1, "keyExchange"    # I

    .prologue
    .line 239
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/tls/TlsECDHKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;I)V

    return-object v0
.end method

.method protected createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsRSAKeyExchange;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

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

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 223
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 192
    :sswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 203
    :sswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 214
    :sswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->cipherFactory:Lorg/spongycastle/crypto/tls/TlsCipherFactory;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    const/16 v2, 0x9

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsCipherFactory;->createCipher(Lorg/spongycastle/crypto/tls/TlsClientContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v0

    goto :goto_0

    .line 181
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_0
        0x13 -> :sswitch_0
        0x16 -> :sswitch_0
        0x2f -> :sswitch_1
        0x30 -> :sswitch_1
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x35 -> :sswitch_2
        0x36 -> :sswitch_2
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
        0xc003 -> :sswitch_0
        0xc004 -> :sswitch_1
        0xc005 -> :sswitch_2
        0xc008 -> :sswitch_0
        0xc009 -> :sswitch_1
        0xc00a -> :sswitch_2
        0xc00d -> :sswitch_0
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_2
        0xc012 -> :sswitch_0
        0xc013 -> :sswitch_1
        0xc014 -> :sswitch_2
    .end sparse-switch
.end method

.method public getCipherSuites()[I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x39
        0x38
        0x33
        0x32
        0x16
        0x13
        0x35
        0x2f
        0xa
    .end array-data
.end method

.method public getClientExtensions()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 32
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
    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCompressionMethod:I

    packed-switch v0, :pswitch_data_0

    .line 175
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 166
    :pswitch_0
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    return-object v0

    .line 163
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

    .line 57
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
    .line 103
    iget v0, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    sparse-switch v0, :sswitch_data_0

    .line 157
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 108
    :sswitch_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createRSAKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 113
    :sswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 118
    :sswitch_2
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 123
    :sswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 128
    :sswitch_4
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 133
    :sswitch_5
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 138
    :sswitch_6
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 143
    :sswitch_7
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 148
    :sswitch_8
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->createECDHEKeyExchange(I)Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v0

    goto :goto_0

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x13 -> :sswitch_3
        0x16 -> :sswitch_4
        0x2f -> :sswitch_0
        0x30 -> :sswitch_1
        0x31 -> :sswitch_2
        0x32 -> :sswitch_3
        0x33 -> :sswitch_4
        0x35 -> :sswitch_0
        0x36 -> :sswitch_1
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x39 -> :sswitch_4
        0xc003 -> :sswitch_5
        0xc004 -> :sswitch_5
        0xc005 -> :sswitch_5
        0xc008 -> :sswitch_6
        0xc009 -> :sswitch_6
        0xc00a -> :sswitch_6
        0xc00d -> :sswitch_7
        0xc00e -> :sswitch_7
        0xc00f -> :sswitch_7
        0xc012 -> :sswitch_8
        0xc013 -> :sswitch_8
        0xc014 -> :sswitch_8
    .end sparse-switch
.end method

.method public init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 0
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 27
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 28
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
    .line 85
    if-nez p1, :cond_0

    .line 95
    :cond_0
    return-void
.end method

.method public notifySelectedCipherSuite(I)V
    .locals 0
    .param p1, "selectedCipherSuite"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCipherSuite:I

    .line 76
    return-void
.end method

.method public notifySelectedCompressionMethod(S)V
    .locals 0
    .param p1, "selectedCompressionMethod"    # S

    .prologue
    .line 80
    iput p1, p0, Lorg/spongycastle/crypto/tls/DefaultTlsClient;->selectedCompressionMethod:I

    .line 81
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
    .line 62
    sget-object v0, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x2f

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 66
    :cond_0
    return-void
.end method

.method public notifySessionID([B)V
    .locals 0
    .param p1, "sessionID"    # [B

    .prologue
    .line 71
    return-void
.end method

.method public processServerExtensions(Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "serverExtensions"    # Ljava/util/Hashtable;

    .prologue
    .line 99
    return-void
.end method
