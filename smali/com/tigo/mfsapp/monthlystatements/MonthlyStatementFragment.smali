.class public Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MonthlyStatementFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field private buttonNext:Landroid/widget/Button;

.field private email:Ljava/lang/String;

.field private fee:Ljava/lang/Float;

.field private monthsFromNow:I

.field private radioGroupTime:Landroid/widget/RadioGroup;

.field private radioGroupTypeOfFile:Landroid/widget/RadioGroup;

.field private selectedTime:Ljava/lang/String;

.field private selectedTypeOfFile:Ljava/lang/String;

.field private textEmail:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "MonthlyStatement"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const v0, 0x7f0601aa

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 72
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 132
    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTime:Landroid/widget/RadioGroup;

    if-ne p1, v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTime:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 135
    .local v1, "selectedRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTime:Ljava/lang/String;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    .line 139
    .local v0, "id":I
    const v2, 0x7f0d01a5

    if-ne v0, v2, :cond_2

    .line 141
    const/4 v2, 0x0

    iput v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    .line 153
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of moths from now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 160
    .end local v0    # "id":I
    .end local v1    # "selectedRadioButton":Landroid/widget/RadioButton;
    :cond_1
    :goto_1
    return-void

    .line 142
    .restart local v0    # "id":I
    .restart local v1    # "selectedRadioButton":Landroid/widget/RadioButton;
    :cond_2
    const v2, 0x7f0d01a6

    if-ne v0, v2, :cond_3

    .line 144
    const/4 v2, 0x1

    iput v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    goto :goto_0

    .line 145
    :cond_3
    const v2, 0x7f0d01a7

    if-ne v0, v2, :cond_4

    .line 147
    const/4 v2, 0x3

    iput v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    goto :goto_0

    .line 148
    :cond_4
    const v2, 0x7f0d01a8

    if-ne v0, v2, :cond_0

    .line 150
    const/4 v2, 0x6

    iput v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    goto :goto_0

    .line 154
    .end local v0    # "id":I
    .end local v1    # "selectedRadioButton":Landroid/widget/RadioButton;
    :cond_5
    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTypeOfFile:Landroid/widget/RadioGroup;

    if-ne p1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTypeOfFile:Landroid/widget/RadioGroup;

    invoke-virtual {v2, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 157
    .restart local v1    # "selectedRadioButton":Landroid/widget/RadioButton;
    invoke-virtual {v1}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTypeOfFile:Ljava/lang/String;

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected type of file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTypeOfFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x7f030071

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTime:Landroid/widget/RadioGroup;

    .line 45
    const v1, 0x7f0d01a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTypeOfFile:Landroid/widget/RadioGroup;

    .line 46
    const v1, 0x7f0d01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->textEmail:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 47
    const v1, 0x7f0d01ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->buttonNext:Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTime:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 50
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->radioGroupTypeOfFile:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 52
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->buttonNext:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->setSubmitButton(Landroid/view/View;)V

    .line 54
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 84
    instance-of v3, p2, Lcom/tigo/mfsapp/service/MonthlyStatementFeeResponse;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 86
    check-cast v1, Lcom/tigo/mfsapp/service/MonthlyStatementFeeResponse;

    .line 87
    .local v1, "feeResponse":Lcom/tigo/mfsapp/service/MonthlyStatementFeeResponse;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MonthlyStatementFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->fee:Ljava/lang/Float;

    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;-><init>()V

    .line 92
    .local v2, "fragment":Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;
    const-string v3, "param_months_from_now"

    iget v4, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    const-string v3, "param_time"

    iget-object v4, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTime:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v3, "param_type_of_file"

    iget-object v4, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTypeOfFile:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v3, "param_email"

    iget-object v4, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->email:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->setFee(Ljava/lang/Float;)V

    .line 98
    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;->initForm(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 101
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "feeResponse":Lcom/tigo/mfsapp/service/MonthlyStatementFeeResponse;
    .end local v2    # "fragment":Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementConfirmationFragment;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 77
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "sessionToken":Ljava/lang/String;
    iget v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->monthsFromNow:I

    invoke-virtual {p1, v1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestMonthlyStatementFee(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7f06003e

    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f0601a9

    invoke-virtual {p0, v2, v1, v3}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 126
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->selectedTypeOfFile:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const v1, 0x7f0601ac

    invoke-virtual {p0, v2, v1, v3}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->textEmail:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {p0, v0, v1}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->validateEmail(ZLcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 122
    const v1, 0x7f0601a3

    invoke-virtual {p0, v2, v1, v3}, Lcom/tigo/mfsapp/monthlystatements/MonthlyStatementFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto :goto_0

    .line 126
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
