.class public Lcom/tigo/mfsapp/model/RemittancePickUp;
.super Ljava/lang/Object;
.source "RemittancePickUp.java"


# instance fields
.field private RemittancePartners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/RemittancePickUp;->RemittancePartners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getRemittancePartners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tigo/mfsapp/model/RemittancePickUp;->RemittancePartners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setRemittancePartners(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "remittancePartners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/RemittancePartner;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/RemittancePickUp;->RemittancePartners:Ljava/util/ArrayList;

    .line 17
    return-void
.end method
