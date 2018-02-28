.class public Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
.super Ljava/lang/Object;
.source "TlsProtocolHandler.java"


# static fields
.field private static final CS_CERTIFICATE_REQUEST_RECEIVED:S = 0x5s

.field private static final CS_CERTIFICATE_VERIFY_SEND:S = 0x8s

.field private static final CS_CLIENT_CHANGE_CIPHER_SPEC_SEND:S = 0x9s

.field private static final CS_CLIENT_FINISHED_SEND:S = 0xas

.field private static final CS_CLIENT_HELLO_SEND:S = 0x1s

.field private static final CS_CLIENT_KEY_EXCHANGE_SEND:S = 0x7s

.field private static final CS_DONE:S = 0xcs

.field private static final CS_SERVER_CERTIFICATE_RECEIVED:S = 0x3s

.field private static final CS_SERVER_CHANGE_CIPHER_SPEC_RECEIVED:S = 0xbs

.field private static final CS_SERVER_HELLO_DONE_RECEIVED:S = 0x6s

.field private static final CS_SERVER_HELLO_RECEIVED:S = 0x2s

.field private static final CS_SERVER_KEY_EXCHANGE_RECEIVED:S = 0x4s

.field private static final EXT_RenegotiationInfo:Ljava/lang/Integer;

.field private static final TLS_ERROR_MESSAGE:Ljava/lang/String; = "Internal TLS error, this could be an attack"

.field private static final emptybuf:[B


# instance fields
.field private alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private appDataReady:Z

.field private applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

.field private certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

.field private changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private clientExtensions:Ljava/util/Hashtable;

.field private closed:Z

.field private connection_state:S

.field private failedWithError:Z

.field private handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

.field private keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

.field private offeredCipherSuites:[I

.field private offeredCompressionMethods:[S

.field private random:Ljava/security/SecureRandom;

.field private rs:Lorg/spongycastle/crypto/tls/RecordStream;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

.field private tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

.field private tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

.field private tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Integer;

    const v1, 0xff01

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;

    .prologue
    .line 98
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "os"    # Ljava/io/OutputStream;
    .param p3, "sr"    # Ljava/security/SecureRandom;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 49
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 50
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    .line 59
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 60
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 62
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 63
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 64
    iput-boolean v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    .line 67
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 69
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 70
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 71
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    .line 72
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    .line 73
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 74
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 75
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 77
    iput-short v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 103
    new-instance v0, Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-direct {v0, p0, p1, p2}, Lorg/spongycastle/crypto/tls/RecordStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    .line 104
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    .line 105
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 2
    .param p0, "a"    # [I
    .param p1, "n"    # I

    .prologue
    .line 1235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1237
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1239
    const/4 v1, 0x1

    .line 1242
    :goto_1
    return v1

    .line 1235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static arrayContains([SS)Z
    .locals 2
    .param p0, "a"    # [S
    .param p1, "n"    # S

    .prologue
    .line 1223
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1225
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1227
    const/4 v1, 0x1

    .line 1230
    :goto_1
    return v1

    .line 1223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1230
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static createRenegotiationInfo([B)[B
    .locals 2
    .param p0, "renegotiated_connection"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1248
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1249
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque8([BLjava/io/OutputStream;)V

    .line 1250
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method private static createSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    .prologue
    .line 85
    new-instance v1, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;-><init>()V

    .line 86
    .local v1, "tsg":Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 91
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/spongycastle/crypto/prng/ThreadedSeedGenerator;->generateSeed(IZ)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 93
    return-object v0
.end method

.method private failWithError(SS)V
    .locals 3
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1153
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_1

    .line 1158
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 1160
    if-ne p1, v2, :cond_0

    .line 1165
    iput-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 1167
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    .line 1168
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->close()V

    .line 1169
    if-ne p1, v2, :cond_2

    .line 1171
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1176
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_2
    return-void
.end method

.method private processAlert()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 695
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v3

    if-lt v3, v4, :cond_2

    .line 700
    new-array v2, v4, [B

    .line 701
    .local v2, "tmp":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v2, v5, v4, v5}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 702
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 703
    aget-byte v3, v2, v5

    int-to-short v1, v3

    .line 704
    .local v1, "level":S
    aget-byte v3, v2, v6

    int-to-short v0, v3

    .line 705
    .local v0, "description":S
    if-ne v1, v4, :cond_1

    .line 710
    iput-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    .line 711
    iput-boolean v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    .line 717
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/RecordStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Internal TLS error, this could be an attack"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 730
    :cond_1
    if-nez v0, :cond_0

    .line 735
    invoke-direct {p0, v6, v5}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 742
    .end local v0    # "description":S
    .end local v1    # "level":S
    .end local v2    # "tmp":[B
    :cond_2
    return-void

    .line 719
    .restart local v0    # "description":S
    .restart local v1    # "level":S
    .restart local v2    # "tmp":[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private processApplicationData()V
    .locals 0

    .prologue
    .line 691
    return-void
.end method

.method private processChangeCipherSpec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 752
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 757
    new-array v0, v2, [B

    .line 758
    .local v0, "b":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v0, v3, v2, v3}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 759
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v1, v2}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 760
    aget-byte v1, v0, v3

    if-eq v1, v2, :cond_0

    .line 765
    invoke-direct {p0, v4, v5}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 771
    :cond_0
    iget-short v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    if-eq v1, v5, :cond_1

    .line 773
    const/16 v1, 0x28

    invoke-direct {p0, v4, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 776
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->serverClientSpecReceived()V

    .line 778
    const/16 v1, 0xb

    iput-short v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    .line 780
    .end local v0    # "b":[B
    :cond_2
    return-void
.end method

.method private processHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 148
    :cond_0
    const/4 v4, 0x0

    .line 152
    .local v4, "read":Z
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    if-lt v6, v9, :cond_1

    .line 154
    new-array v0, v9, [B

    .line 155
    .local v0, "beginning":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v0, v8, v9, v8}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 156
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 157
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v5

    .line 158
    .local v5, "type":S
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint24(Ljava/io/InputStream;)I

    move-result v3

    .line 163
    .local v3, "len":I
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v6

    add-int/lit8 v7, v3, 0x4

    if-lt v6, v7, :cond_1

    .line 168
    new-array v2, v3, [B

    .line 169
    .local v2, "buf":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v6, v2, v8, v3, v9}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 170
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    add-int/lit8 v7, v3, 0x4

    invoke-virtual {v6, v7}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    .line 178
    sparse-switch v5, :sswitch_data_0

    .line 184
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v0, v8, v9}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 185
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v6, v2, v8, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 192
    :sswitch_0
    invoke-direct {p0, v5, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processHandshakeMessage(S[B)V

    .line 193
    const/4 v4, 0x1

    .line 197
    .end local v0    # "beginning":[B
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v5    # "type":S
    :cond_1
    if-nez v4, :cond_0

    .line 198
    return-void

    .line 178
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private processHandshakeMessage(S[B)V
    .locals 43
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v23, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 204
    .local v23, "is":Ljava/io/ByteArrayInputStream;
    sparse-switch p1, :sswitch_data_0

    .line 678
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 208
    :sswitch_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    .line 226
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 229
    :goto_1
    const/16 v39, 0x3

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/Certificate;->parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v33

    .line 216
    .local v33, "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsClient;->getAuthentication()Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->notifyServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto :goto_1

    .line 233
    .end local v33    # "serverCertificate":Lorg/spongycastle/crypto/tls/Certificate;
    :sswitch_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_1

    .line 273
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto :goto_0

    .line 240
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v39

    sget-object v40, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_2

    const/16 v24, 0x1

    .line 242
    .local v24, "isTls":Z
    :goto_2
    if-eqz v24, :cond_3

    const/16 v10, 0xc

    .line 243
    .local v10, "checksumLength":I
    :goto_3
    new-array v0, v10, [B

    move-object/from16 v35, v0

    .line 244
    .local v35, "serverVerifyData":[B
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    const-string v40, "server finished"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v41, v0

    sget-object v42, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    invoke-virtual/range {v41 .. v42}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v41

    invoke-static/range {v39 .. v41}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsClientContext;Ljava/lang/String;[B)[B

    move-result-object v17

    .line 257
    .local v17, "expectedServerVerifyData":[B
    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v39

    if-nez v39, :cond_1

    .line 262
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 265
    :cond_1
    const/16 v39, 0xc

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 270
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    goto/16 :goto_0

    .line 240
    .end local v10    # "checksumLength":I
    .end local v17    # "expectedServerVerifyData":[B
    .end local v24    # "isTls":Z
    .end local v35    # "serverVerifyData":[B
    :cond_2
    const/16 v24, 0x0

    goto :goto_2

    .line 242
    .restart local v24    # "isTls":Z
    :cond_3
    const/16 v10, 0x24

    goto :goto_3

    .line 277
    .end local v24    # "isTls":Z
    :sswitch_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_2

    .line 450
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 283
    :pswitch_2
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v36

    .line 284
    .local v36, "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v14

    .line 285
    .local v14, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v39

    invoke-virtual {v14}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_4

    .line 287
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifyServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v39, v0

    const/16 v40, 0x20

    move/from16 v0, v40

    new-array v0, v0, [B

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 299
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque8(Ljava/io/InputStream;)[B

    move-result-object v37

    .line 300
    .local v37, "sessionID":[B
    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v39, v0

    const/16 v40, 0x20

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_5

    .line 302
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 305
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySessionID([B)V

    .line 311
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v31

    .line 312
    .local v31, "selectedCipherSuite":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->arrayContains([II)Z

    move-result v39

    if-eqz v39, :cond_6

    const/16 v39, 0xff

    move/from16 v0, v31

    move/from16 v1, v39

    if-ne v0, v1, :cond_7

    .line 315
    :cond_6
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 318
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCipherSuite(I)V

    .line 324
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v32

    .line 325
    .local v32, "selectedCompressionMethod":S
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->arrayContains([SS)Z

    move-result v39

    if-nez v39, :cond_8

    .line 327
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 330
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySelectedCompressionMethod(S)V

    .line 350
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 352
    .local v34, "serverExtensions":Ljava/util/Hashtable;
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    .line 355
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v19

    .line 357
    .local v19, "extBytes":[B
    new-instance v18, Ljava/io/ByteArrayInputStream;

    invoke-direct/range {v18 .. v19}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 358
    .local v18, "ext":Ljava/io/ByteArrayInputStream;
    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_b

    .line 360
    new-instance v20, Ljava/lang/Integer;

    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v39

    move-object/from16 v0, v20

    move/from16 v1, v39

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 361
    .local v20, "extType":Ljava/lang/Integer;
    invoke-static/range {v18 .. v18}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v21

    .line 375
    .local v21, "extValue":[B
    sget-object v39, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v20

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    if-nez v39, :cond_9

    .line 388
    const/16 v39, 0x2

    const/16 v40, 0x6e

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 392
    :cond_9
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_a

    .line 401
    const/16 v39, 0x2

    const/16 v40, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 405
    :cond_a
    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 409
    .end local v18    # "ext":Ljava/io/ByteArrayInputStream;
    .end local v19    # "extBytes":[B
    .end local v20    # "extType":Ljava/lang/Integer;
    .end local v21    # "extValue":[B
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 416
    sget-object v39, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v30

    .line 425
    .local v30, "secure_negotiation":Z
    if-eqz v30, :cond_c

    .line 427
    sget-object v39, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [B

    move-object/from16 v29, v39

    check-cast v29, [B

    .line 429
    .local v29, "renegExtValue":[B
    sget-object v39, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-static/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->createRenegotiationInfo([B)[B

    move-result-object v39

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v39

    if-nez v39, :cond_c

    .line 432
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 437
    .end local v29    # "renegExtValue":[B
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->notifySecureRenegotiation(Z)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsClient;->processServerExtensions(Ljava/util/Hashtable;)V

    .line 445
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsClient;->getKeyExchange()Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    .line 447
    const/16 v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 454
    .end local v14    # "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .end local v30    # "secure_negotiation":Z
    .end local v31    # "selectedCipherSuite":I
    .end local v32    # "selectedCompressionMethod":S
    .end local v34    # "serverExtensions":Ljava/util/Hashtable;
    .end local v36    # "server_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .end local v37    # "sessionID":[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_3

    .line 575
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    goto/16 :goto_0

    .line 459
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCertificate()V

    .line 460
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 467
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 474
    :pswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 476
    const/16 v39, 0x6

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 478
    const/4 v12, 0x0

    .line 479
    .local v12, "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v39, v0

    if-nez v39, :cond_f

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 514
    :goto_5
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendClientKeyExchange()V

    .line 516
    const/16 v39, 0x7

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generatePremasterSecret()[B

    move-result-object v28

    .line 523
    .local v28, "pms":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsClientContext;[B)[B

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 531
    const/16 v39, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v39

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 533
    if-eqz v12, :cond_e

    instance-of v0, v12, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    move/from16 v39, v0

    if-eqz v39, :cond_e

    move-object/from16 v38, v12

    .line 535
    check-cast v38, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;

    .line 536
    .local v38, "signerCreds":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-virtual/range {v39 .. v40}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v25

    .line 537
    .local v25, "md5andsha1":[B
    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsSignerCredentials;->generateCertificateSignature([B)[B

    move-result-object v11

    .line 539
    .local v11, "clientCertificateSignature":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendCertificateVerify([B)V

    .line 541
    const/16 v39, 0x8

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 547
    .end local v11    # "clientCertificateSignature":[B
    .end local v25    # "md5andsha1":[B
    .end local v38    # "signerCreds":Lorg/spongycastle/crypto/tls/TlsSignerCredentials;
    :cond_e
    const/16 v39, 0x1

    move/from16 v0, v39

    new-array v15, v0, [B

    .line 548
    .local v15, "cmessage":[B
    const/16 v39, 0x0

    const/16 v40, 0x1

    aput-byte v40, v15, v39

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x14

    const/16 v41, 0x0

    array-length v0, v15

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v15, v2, v3}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 552
    const/16 v39, 0x9

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompression()Lorg/spongycastle/crypto/tls/TlsCompression;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    move-object/from16 v41, v0

    invoke-interface/range {v41 .. v41}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipher()Lorg/spongycastle/crypto/tls/TlsCipher;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Lorg/spongycastle/crypto/tls/RecordStream;->clientCipherSpecDecided(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    const-string v40, "client finished"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v41, v0

    sget-object v42, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    invoke-virtual/range {v41 .. v42}, Lorg/spongycastle/crypto/tls/RecordStream;->getCurrentHash([B)[B

    move-result-object v41

    invoke-static/range {v39 .. v41}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsClientContext;Ljava/lang/String;[B)[B

    move-result-object v13

    .line 565
    .local v13, "clientVerifyData":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 566
    .local v8, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v39, 0x14

    move/from16 v0, v39

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 567
    invoke-static {v13, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque24([BLjava/io/OutputStream;)V

    .line 568
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    .line 570
    .local v26, "message":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    move-object/from16 v39, v0

    const/16 v40, 0x16

    const/16 v41, 0x0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v42, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v26

    move/from16 v3, v41

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 572
    const/16 v39, 0xa

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 485
    .end local v8    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "clientVerifyData":[B
    .end local v15    # "cmessage":[B
    .end local v26    # "message":[B
    .end local v28    # "pms":[B
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Lorg/spongycastle/crypto/tls/TlsAuthentication;->getClientCredentials(Lorg/spongycastle/crypto/tls/CertificateRequest;)Lorg/spongycastle/crypto/tls/TlsCredentials;

    move-result-object v12

    .line 487
    if-nez v12, :cond_12

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipClientCredentials()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v39

    sget-object v40, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_10

    const/16 v24, 0x1

    .line 493
    .restart local v24    # "isTls":Z
    :goto_6
    if-eqz v24, :cond_11

    .line 495
    sget-object v39, Lorg/spongycastle/crypto/tls/Certificate;->EMPTY_CHAIN:Lorg/spongycastle/crypto/tls/Certificate;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto/16 :goto_5

    .line 491
    .end local v24    # "isTls":Z
    :cond_10
    const/16 v24, 0x0

    goto :goto_6

    .line 499
    .restart local v24    # "isTls":Z
    :cond_11
    const/16 v39, 0x1

    const/16 v40, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    goto/16 :goto_5

    .line 504
    .end local v24    # "isTls":Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-interface {v0, v12}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V

    .line 506
    invoke-interface {v12}, Lorg/spongycastle/crypto/tls/TlsCredentials;->getCertificate()Lorg/spongycastle/crypto/tls/Certificate;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V

    goto/16 :goto_5

    .line 580
    .end local v12    # "clientCreds":Lorg/spongycastle/crypto/tls/TlsCredentials;
    :sswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_4

    .line 598
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 601
    :goto_7
    const/16 v39, 0x4

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 585
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerCertificate()V

    .line 586
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    .line 592
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->processServerKeyExchange(Ljava/io/InputStream;)V

    .line 594
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    goto :goto_7

    .line 606
    :sswitch_5
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_5

    .line 653
    const/16 v39, 0x2

    const/16 v40, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 656
    :goto_8
    const/16 v39, 0x5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-short v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    goto/16 :goto_0

    .line 611
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    invoke-interface/range {v39 .. v39}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->skipServerKeyExchange()V

    .line 617
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->authentication:Lorg/spongycastle/crypto/tls/TlsAuthentication;

    move-object/from16 v39, v0

    if-nez v39, :cond_13

    .line 623
    const/16 v39, 0x2

    const/16 v40, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 626
    :cond_13
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v27

    .line 627
    .local v27, "numTypes":I
    move/from16 v0, v27

    new-array v9, v0, [S

    .line 628
    .local v9, "certificateTypes":[S
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_14

    .line 630
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v39

    aput-short v39, v9, v22

    .line 628
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 633
    :cond_14
    invoke-static/range {v23 .. v23}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 635
    .local v5, "authorities":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->assertEmpty(Ljava/io/ByteArrayInputStream;)V

    .line 637
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 639
    .local v6, "authorityDNs":Ljava/util/Vector;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 640
    .local v7, "bis":Ljava/io/ByteArrayInputStream;
    :goto_a
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v39

    if-lez v39, :cond_15

    .line 642
    invoke-static {v7}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v16

    .line 643
    .local v16, "dnBytes":[B
    invoke-static/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v39

    invoke-static/range {v39 .. v39}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_a

    .line 646
    .end local v16    # "dnBytes":[B
    :cond_15
    new-instance v39, Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v0, v39

    invoke-direct {v0, v9, v6}, Lorg/spongycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;)V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->certificateRequest:Lorg/spongycastle/crypto/tls/CertificateRequest;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V

    goto/16 :goto_8

    .line 667
    .end local v5    # "authorities":[B
    .end local v6    # "authorityDNs":Ljava/util/Vector;
    .end local v7    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v9    # "certificateTypes":[S
    .end local v22    # "i":I
    .end local v27    # "numTypes":I
    :sswitch_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    move/from16 v39, v0

    const/16 v40, 0xc

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_0

    .line 670
    const/16 v39, 0x1

    const/16 v40, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->sendAlert(SS)V

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x2 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_4
        0xd -> :sswitch_5
        0xe -> :sswitch_3
        0x14 -> :sswitch_1
    .end sparse-switch

    .line 208
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 233
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch

    .line 277
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 454
    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch

    .line 580
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 606
    :pswitch_data_5
    .packed-switch 0x3
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private safeReadData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x2

    .line 1018
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/RecordStream;->readData()V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1044
    return-void

    .line 1020
    :catch_0
    move-exception v0

    .line 1022
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_0

    .line 1024
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1026
    :cond_0
    throw v0

    .line 1028
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 1030
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    .line 1032
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1034
    :cond_1
    throw v0

    .line 1036
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    .line 1040
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1042
    :cond_2
    throw v0
.end method

.method private safeWriteMessage(S[BII)V
    .locals 4
    .param p1, "type"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x50

    const/4 v2, 0x2

    .line 1050
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1076
    return-void

    .line 1052
    :catch_0
    move-exception v0

    .line 1054
    .local v0, "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_0

    .line 1056
    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1058
    :cond_0
    throw v0

    .line 1060
    .end local v0    # "e":Lorg/spongycastle/crypto/tls/TlsFatalAlert;
    :catch_1
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_1

    .line 1064
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1066
    :cond_1
    throw v0

    .line 1068
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1070
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v1, :cond_2

    .line 1072
    invoke-direct {p0, v2, v3}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1074
    :cond_2
    throw v0
.end method

.method private sendAlert(SS)V
    .locals 5
    .param p1, "alertLevel"    # S
    .param p2, "alertDescription"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1182
    new-array v0, v4, [B

    .line 1183
    .local v0, "error":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v3

    .line 1184
    const/4 v1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 1186
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v0, v3, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 1187
    return-void
.end method

.method private sendCertificateVerify([B)V
    .locals 6
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 824
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xf

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 825
    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 826
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 827
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 829
    .local v1, "message":[B
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 830
    return-void
.end method

.method private sendClientCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 6
    .param p1, "clientCert"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 784
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 785
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0xb

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 788
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 790
    invoke-virtual {p1, v0}, Lorg/spongycastle/crypto/tls/Certificate;->encode(Ljava/io/OutputStream;)V

    .line 791
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 794
    .local v1, "message":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 796
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    array-length v4, v1

    invoke-virtual {v2, v3, v1, v5, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 797
    return-void
.end method

.method private sendClientKeyExchange()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 801
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 803
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v2, 0x10

    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 806
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 808
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->keyExchange:Lorg/spongycastle/crypto/tls/TlsKeyExchange;

    invoke-interface {v2, v0}, Lorg/spongycastle/crypto/tls/TlsKeyExchange;->generateClientKeyExchange(Ljava/io/OutputStream;)V

    .line 809
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 812
    .local v1, "message":[B
    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(I[BI)V

    .line 814
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    const/16 v3, 0x16

    array-length v4, v1

    invoke-virtual {v2, v3, v1, v5, v4}, Lorg/spongycastle/crypto/tls/RecordStream;->writeMessage(S[BII)V

    .line 815
    return-void
.end method

.method private static writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V
    .locals 1
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "extType"    # Ljava/lang/Integer;
    .param p2, "extValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 1257
    invoke-static {p2, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 1258
    return-void
.end method


# virtual methods
.method protected assertEmpty(Ljava/io/ByteArrayInputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 1212
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    .line 1214
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1196
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-nez v0, :cond_0

    .line 1198
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 1200
    :cond_0
    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V
    .locals 1
    .param p1, "verifyer"    # Lorg/spongycastle/crypto/tls/CertificateVerifyer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    new-instance v0, Lorg/spongycastle/crypto/tls/LegacyTlsClient;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/LegacyTlsClient;-><init>(Lorg/spongycastle/crypto/tls/CertificateVerifyer;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connect(Lorg/spongycastle/crypto/tls/TlsClient;)V

    .line 844
    return-void
.end method

.method public connect(Lorg/spongycastle/crypto/tls/TlsClient;)V
    .locals 14
    .param p1, "tlsClient"    # Lorg/spongycastle/crypto/tls/TlsClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 854
    if-nez p1, :cond_0

    .line 856
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "\'tlsClient\' cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 858
    :cond_0
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    if-eqz v9, :cond_1

    .line 860
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "connect can only be called once"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 868
    :cond_1
    new-instance v9, Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v9}, Lorg/spongycastle/crypto/tls/SecurityParameters;-><init>()V

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 869
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    const/16 v12, 0x20

    new-array v12, v12, [B

    iput-object v12, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    .line 870
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v12, v12, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {v9, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 871
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v9, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-static {v9, v10}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeGMTUnixTime([BI)V

    .line 873
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->random:Ljava/security/SecureRandom;

    iget-object v13, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    invoke-direct {v9, v12, v13}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    .line 875
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v9, v12}, Lorg/spongycastle/crypto/tls/RecordStream;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 877
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    .line 878
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    iget-object v12, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-interface {v9, v12}, Lorg/spongycastle/crypto/tls/TlsClient;->init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    .line 880
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 882
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 883
    .local v1, "client_version":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v9, v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 885
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClientContext:Lorg/spongycastle/crypto/tls/TlsClientContextImpl;

    invoke-virtual {v9, v1}, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V

    .line 886
    invoke-static {v1, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 888
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    iget-object v9, v9, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 893
    invoke-static {v10, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 898
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClient;->getCipherSuites()[I

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    .line 901
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClient;->getClientExtensions()Ljava/util/Hashtable;

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    .line 910
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    sget-object v12, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->EXT_RenegotiationInfo:Ljava/lang/Integer;

    invoke-virtual {v9, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    :cond_2
    move v7, v11

    .line 913
    .local v7, "noRenegExt":Z
    :goto_0
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    array-length v2, v9

    .line 914
    .local v2, "count":I
    if-eqz v7, :cond_3

    .line 917
    add-int/lit8 v2, v2, 0x1

    .line 920
    :cond_3
    mul-int/lit8 v9, v2, 0x2

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 921
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCipherSuites:[I

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16Array([ILjava/io/OutputStream;)V

    .line 923
    if-eqz v7, :cond_4

    .line 925
    const/16 v9, 0xff

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 930
    :cond_4
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsClient:Lorg/spongycastle/crypto/tls/TlsClient;

    invoke-interface {v9}, Lorg/spongycastle/crypto/tls/TlsClient;->getCompressionMethods()[S

    move-result-object v9

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    .line 932
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    array-length v9, v9

    int-to-short v9, v9

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 933
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->offeredCompressionMethods:[S

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8Array([SLjava/io/OutputStream;)V

    .line 936
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    if-eqz v9, :cond_7

    .line 938
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 940
    .local v3, "ext":Ljava/io/ByteArrayOutputStream;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v9}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v5

    .line 941
    .local v5, "keys":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 943
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 944
    .local v4, "extType":Ljava/lang/Integer;
    iget-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->clientExtensions:Ljava/util/Hashtable;

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    check-cast v9, [B

    invoke-static {v3, v4, v9}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->writeExtension(Ljava/io/OutputStream;Ljava/lang/Integer;[B)V

    goto :goto_1

    .end local v2    # "count":I
    .end local v3    # "ext":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "extType":Ljava/lang/Integer;
    .end local v5    # "keys":Ljava/util/Enumeration;
    .end local v7    # "noRenegExt":Z
    :cond_5
    move v7, v10

    .line 910
    goto :goto_0

    .line 947
    .restart local v2    # "count":I
    .restart local v3    # "ext":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "keys":Ljava/util/Enumeration;
    .restart local v7    # "noRenegExt":Z
    :cond_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9, v8}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 950
    .end local v3    # "ext":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "keys":Ljava/util/Enumeration;
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 951
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    invoke-static {v11, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 952
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-static {v9, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 953
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 954
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 956
    .local v6, "message":[B
    const/16 v9, 0x16

    array-length v12, v6

    invoke-direct {p0, v9, v6, v10, v12}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 958
    iput-short v11, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    .line 963
    :goto_2
    iget-short v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->connection_state:S

    const/16 v10, 0xc

    if-eq v9, v10, :cond_8

    .line 965
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_2

    .line 968
    :cond_8
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsInputStream;

    invoke-direct {v9, p0}, Lorg/spongycastle/crypto/tls/TlsInputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    .line 969
    new-instance v9, Lorg/spongycastle/crypto/tls/TlsOutputStream;

    invoke-direct {v9, p0}, Lorg/spongycastle/crypto/tls/TlsOutputStream;-><init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;)V

    iput-object v9, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    .line 970
    return-void
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1218
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->rs:Lorg/spongycastle/crypto/tls/RecordStream;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->flush()V

    .line 1219
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsInputStream:Lorg/spongycastle/crypto/tls/TlsInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->tlsOutputStream:Lorg/spongycastle/crypto/tls/TlsOutputStream;

    return-object v0
.end method

.method protected processData(S[BII)V
    .locals 2
    .param p1, "protocol"    # S
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    packed-switch p1, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 115
    :pswitch_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->changeCipherSpecQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 116
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processChangeCipherSpec()V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->alertQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 120
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processAlert()V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->handshakeQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 124
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processHandshake()V

    goto :goto_0

    .line 127
    :pswitch_3
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->appDataReady:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x2

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failWithError(SS)V

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/ByteQueue;->addData([BII)V

    .line 132
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processApplicationData()V

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected readApplicationData([BII)I
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 985
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 990
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v0, :cond_1

    .line 992
    iget-boolean v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v0, :cond_0

    .line 997
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Internal TLS error, this could be an attack"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    const/4 v0, -0x1

    .line 1011
    :goto_1
    return v0

    .line 1006
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeReadData()V

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/tls/ByteQueue;->size()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1009
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/spongycastle/crypto/tls/ByteQueue;->read([BIII)V

    .line 1010
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->applicationDataQueue:Lorg/spongycastle/crypto/tls/ByteQueue;

    invoke-virtual {v0, p3}, Lorg/spongycastle/crypto/tls/ByteQueue;->removeData(I)V

    move v0, p3

    .line 1011
    goto :goto_1
.end method

.method protected writeData([BII)V
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 1090
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->closed:Z

    if-eqz v1, :cond_1

    .line 1092
    iget-boolean v1, p0, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->failedWithError:Z

    if-eqz v1, :cond_0

    .line 1094
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Internal TLS error, this could be an attack"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Sorry, connection has been closed, you cannot write more data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1105
    :cond_1
    sget-object v1, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->emptybuf:[B

    invoke-direct {p0, v3, v1, v2, v2}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 1112
    :cond_2
    const/16 v1, 0x4000

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1114
    .local v0, "toWrite":I
    invoke-direct {p0, v3, p1, p2, v0}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->safeWriteMessage(S[BII)V

    .line 1116
    add-int/2addr p2, v0

    .line 1117
    sub-int/2addr p3, v0

    .line 1119
    if-gtz p3, :cond_2

    .line 1121
    return-void
.end method
