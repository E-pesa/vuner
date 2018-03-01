.class public Lcom/tigo/mfsapp/model/SecurityQuestion;
.super Ljava/lang/Object;
.source "SecurityQuestion.java"


# instance fields
.field private QuestionID:I

.field private displayName:Lcom/tigo/mfsapp/model/DisplayNames;


# direct methods
.method public constructor <init>(ILcom/tigo/mfsapp/model/DisplayNames;)V
    .locals 0
    .param p1, "QuestionID"    # I
    .param p2, "displayName"    # Lcom/tigo/mfsapp/model/DisplayNames;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->QuestionID:I

    .line 12
    iput-object p2, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->displayName:Lcom/tigo/mfsapp/model/DisplayNames;

    .line 13
    return-void
.end method


# virtual methods
.method public getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->displayName:Lcom/tigo/mfsapp/model/DisplayNames;

    return-object v0
.end method

.method public getQuestionID()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->QuestionID:I

    return v0
.end method

.method public setDisplayName(Lcom/tigo/mfsapp/model/DisplayNames;)V
    .locals 0
    .param p1, "displayName"    # Lcom/tigo/mfsapp/model/DisplayNames;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->displayName:Lcom/tigo/mfsapp/model/DisplayNames;

    .line 33
    return-void
.end method

.method public setQuestionID(I)V
    .locals 0
    .param p1, "QuestionID"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/tigo/mfsapp/model/SecurityQuestion;->QuestionID:I

    .line 23
    return-void
.end method
