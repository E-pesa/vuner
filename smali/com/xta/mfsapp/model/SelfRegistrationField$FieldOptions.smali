.class public Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
.super Ljava/lang/Object;
.source "SelfRegistrationField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/model/SelfRegistrationField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldOptions"
.end annotation


# instance fields
.field private Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

.field private Value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->Value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    .locals 0
    .param p1, "name"    # Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 38
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->Value:Ljava/lang/String;

    .line 45
    return-void
.end method
