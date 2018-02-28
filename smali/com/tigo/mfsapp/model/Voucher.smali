.class public Lcom/tigo/mfsapp/model/Voucher;
.super Ljava/lang/Object;
.source "Voucher.java"


# instance fields
.field private GUID:Ljava/lang/String;

.field private IsCurrentlyInUse:Z

.field private MSISDN:Ljava/lang/String;

.field private Manufacturer:Ljava/lang/String;

.field private Model:Ljava/lang/String;

.field private RegistrationDate:Ljava/lang/String;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method public getMSISDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->MSISDN:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->Manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->Model:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->RegistrationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Voucher;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public isIsCurrentlyInUse()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Voucher;->IsCurrentlyInUse:Z

    return v0
.end method

.method public setGUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "gUID"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->GUID:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setIsCurrentlyInUse(Z)V
    .locals 0
    .param p1, "isCurrentlyInUse"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Voucher;->IsCurrentlyInUse:Z

    .line 81
    return-void
.end method

.method public setMSISDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSISDN"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->MSISDN:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->Manufacturer:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->Model:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setRegistrationDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationDate"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->RegistrationDate:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Voucher;->Type:Ljava/lang/String;

    .line 61
    return-void
.end method
