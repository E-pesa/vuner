.class public Lcom/tigo/mfsapp/model/maps/BaseDetail;
.super Ljava/lang/Object;
.source "BaseDetail.java"


# instance fields
.field private AccountNumber:Ljava/lang/String;

.field private Address:Ljava/lang/String;

.field private Code:Ljava/lang/String;

.field private Coord:Lcom/tigo/mfsapp/model/maps/Coord;

.field private Description:Ljava/lang/String;

.field private Email:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private IdPDV:Ljava/lang/String;

.field private Name:Ljava/lang/String;

.field private Owner:Ljava/lang/String;

.field private PhoneNumber:Ljava/lang/String;

.field private Status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->AccountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Code:Ljava/lang/String;

    return-object v0
.end method

.method public getCoord()Lcom/tigo/mfsapp/model/maps/Coord;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Coord:Lcom/tigo/mfsapp/model/maps/Coord;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Email:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPDV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->IdPDV:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Owner:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->PhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountNumber"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->AccountNumber:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Address:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Code:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setCoord(Lcom/tigo/mfsapp/model/maps/Coord;)V
    .locals 0
    .param p1, "coord"    # Lcom/tigo/mfsapp/model/maps/Coord;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Coord:Lcom/tigo/mfsapp/model/maps/Coord;

    .line 46
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Description:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Email:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "iD"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->ID:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setIdPDV(Ljava/lang/String;)V
    .locals 0
    .param p1, "idPDV"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->IdPDV:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Owner:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->PhoneNumber:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/BaseDetail;->Status:Ljava/lang/String;

    .line 86
    return-void
.end method
