.class public Lcom/tigo/mfsapp/model/InterestPaymentInfo;
.super Ljava/lang/Object;
.source "InterestPaymentInfo.java"


# instance fields
.field private Description:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private opened:Z

.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->selected:Z

    .line 10
    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->opened:Z

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->opened:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->selected:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Description:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Id:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "opened"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->opened:Z

    .line 45
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->selected:Z

    .line 60
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/model/InterestPaymentInfo;->Title:Ljava/lang/String;

    .line 30
    return-void
.end method
