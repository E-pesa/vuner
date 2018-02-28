.class Lorg/spongycastle/crypto/tls/TlsClientContextImpl;
.super Ljava/lang/Object;
.source "TlsClientContextImpl.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsClientContext;


# instance fields
.field private clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private secureRandom:Ljava/security/SecureRandom;

.field private securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

.field private serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

.field private userObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/tls/SecurityParameters;)V
    .locals 1
    .param p1, "secureRandom"    # Ljava/security/SecureRandom;
    .param p2, "securityParameters"    # Lorg/spongycastle/crypto/tls/SecurityParameters;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 11
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 12
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 17
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    .line 18
    return-void
.end method


# virtual methods
.method public getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->securityParameters:Lorg/spongycastle/crypto/tls/SecurityParameters;

    return-object v0
.end method

.method public getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public setClientVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "clientVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 37
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->clientVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 38
    return-void
.end method

.method public setServerVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;)V
    .locals 0
    .param p1, "serverVersion"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .prologue
    .line 47
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->serverVersion:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 48
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsClientContextImpl;->userObject:Ljava/lang/Object;

    .line 58
    return-void
.end method
