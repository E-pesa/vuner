.class public Lcom/tigo/mfsapp/model/Contact;
.super Ljava/util/HashMap;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getContactName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    const-string v0, "PARAM_NAME"

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContactPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "PARAM_PHONE"

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
