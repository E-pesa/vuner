.class public Lcom/tigo/mfsapp/model/ReferenceNumberKey;
.super Lcom/tigo/mfsapp/model/LanguageDescriptions;
.source "ReferenceNumberKey.java"


# instance fields
.field private ConfirmationParameters:[Ljava/lang/String;

.field private MaxLength:Ljava/lang/String;

.field private MinLength:Ljava/lang/String;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/model/LanguageDescriptions;-><init>(Landroid/os/Parcel;)V

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MinLength:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MaxLength:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->Type:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getConfirmationParameters()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->ConfirmationParameters:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MaxLength:Ljava/lang/String;

    return-object v0
.end method

.method public getMinLength()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MinLength:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public setConfirmationParameters([Ljava/lang/String;)V
    .locals 0
    .param p1, "confirmParameters"    # [Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->ConfirmationParameters:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setMaxLength(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxLength"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MaxLength:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMinLength(Ljava/lang/String;)V
    .locals 0
    .param p1, "minLength"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->MinLength:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->Type:Ljava/lang/String;

    .line 41
    return-void
.end method
