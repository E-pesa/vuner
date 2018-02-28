.class public Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "MonthlyStatementConfirmationFragment.java"


# static fields
.field public static final PARAM_EMAIL:Ljava/lang/String; = "param_email"

.field public static final PARAM_MONTHS_FROM_NOW:Ljava/lang/String; = "param_months_from_now"

.field public static final PARAM_TIME:Ljava/lang/String; = "param_time"

.field public static final PARAM_TYPE_OF_FILE:Ljava/lang/String; = "param_type_of_file"


# instance fields
.field private buttonConfirm:Landroid/widget/Button;

.field private email:Ljava/lang/String;

.field private monthsFromNow:I

.field private textEmail:Landroid/widget/TextView;

.field private textTime:Landroid/widget/TextView;

.field private textTypeOfFile:Landroid/widget/TextView;

.field private time:Ljava/lang/String;

.field private typeOfFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, ""

    .line 59
    .local v0, "confirmationMessage":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->fee:Ljava/lang/Float;

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "feeString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060270

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const-string v0, "param_months_from_now"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->monthsFromNow:I

    .line 69
    const-string v0, "param_time"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->time:Ljava/lang/String;

    .line 70
    const-string v0, "param_type_of_file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->typeOfFile:Ljava/lang/String;

    .line 71
    const-string v0, "param_email"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->email:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textTime:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0d01af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textTypeOfFile:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0d01b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textEmail:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0d0082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->buttonConfirm:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->time:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textTypeOfFile:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->typeOfFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->textEmail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->buttonConfirm:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->setSubmitButton(Landroid/view/View;)V

    .line 51
    return-object v0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 77
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "sessionToken":Ljava/lang/String;
    iget v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->monthsFromNow:I

    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->typeOfFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/service/Connection;->requestMonthlyStatement(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 79
    return-void
.end method
