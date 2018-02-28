.class public Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "RegisterNewUsersConfirmFragment.java"


# static fields
.field public static final PARAM_CRF_NUMBER:Ljava/lang/String; = "PARAM_CRF_NUMBER"

.field public static final PARAM_DATE_OF_BIRTH:Ljava/lang/String; = "PARAM_DATE_OF_BIRTH"

.field public static final PARAM_FIRST_NAME:Ljava/lang/String; = "PARAM_FIRST_NAME"

.field public static final PARAM_ID_NUMBER:Ljava/lang/String; = "PARAM_ID_NUMBER"

.field public static final PARAM_ID_TYPE:Ljava/lang/String; = "PARAM_ID_TYPE"

.field public static final PARAM_LAST_NAME:Ljava/lang/String; = "PARAM_LAST_NAME"

.field public static final PARAM_MOBILE_NUMBER:Ljava/lang/String; = "PARAM_MOBILE_NUMBER"

.field public static final PARAM_NATIONALITY:Ljava/lang/String; = "PARAM_NATIONALITY"

.field public static final PARAM_RESIDENCIAL_ADDRESS:Ljava/lang/String; = "PARAM_RESIDENCIAL_ADDRESS"


# instance fields
.field private crfNumber:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private idNumber:Ljava/lang/String;

.field private idType:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private nationality:Ljava/lang/String;

.field private residencialAddress:Ljava/lang/String;

.field private textCRFNumber:Landroid/widget/TextView;

.field private textDateOfBirth:Landroid/widget/TextView;

.field private textFirstName:Landroid/widget/TextView;

.field private textIdNumber:Landroid/widget/TextView;

.field private textIdType:Landroid/widget/TextView;

.field private textLastName:Landroid/widget/TextView;

.field private textMobileNumber:Landroid/widget/TextView;

.field private textNationality:Landroid/widget/TextView;

.field private textResidencialAddress:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601fe

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const-string v0, "PARAM_FIRST_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    .line 59
    const-string v0, "PARAM_LAST_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    .line 60
    const-string v0, "PARAM_MOBILE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    .line 62
    const-string v0, "PARAM_ID_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idType:Ljava/lang/String;

    .line 63
    const-string v0, "PARAM_ID_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    .line 65
    const-string v0, "PARAM_DATE_OF_BIRTH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    .line 66
    const-string v0, "PARAM_NATIONALITY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    .line 67
    const-string v0, "PARAM_RESIDENCIAL_ADDRESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    .line 68
    const-string v0, "PARAM_CRF_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textFirstName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textLastName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textMobileNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textIdType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textIdNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textDateOfBirth:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textResidencialAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textCRFNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->submit()V

    .line 129
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 94
    const v1, 0x7f030078

    iput v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->layoutId:I

    .line 96
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->fee:Ljava/lang/Float;

    .line 97
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->total:Ljava/lang/Float;

    .line 98
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->amount:Ljava/lang/Float;

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textFirstName:Landroid/widget/TextView;

    .line 103
    const v1, 0x7f0d01c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textLastName:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0d01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textMobileNumber:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0d01c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textIdType:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0d01c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textIdNumber:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0d01c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textDateOfBirth:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textNationality:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0d01cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textResidencialAddress:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0d01cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->textCRFNumber:Landroid/widget/TextView;

    .line 112
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 231
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 234
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 238
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 9
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 149
    instance-of v0, p2, Lcom/tigo/mfsapp/service/JsonResponse;

    if-eqz v0, :cond_1

    .line 151
    check-cast p2, Lcom/tigo/mfsapp/service/JsonResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/JsonResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 152
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v8, ""

    .line 153
    .local v8, "transactionId":Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v0, "TransactionID"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    const-string v0, "TransactionID"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 164
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->getConfirmationTitleString()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->getConfirmationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, "idString":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 170
    const/4 v3, 0x0

    new-instance v4, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$1;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;)V

    const-string v5, "Activate New User"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->showYesNoDialog(Ljava/lang/String;Ljava/lang/String;ZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;Ljava/lang/String;)V

    .line 210
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "idString":Ljava/lang/String;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "transactionId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 158
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "transactionId":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v1    # "title":Ljava/lang/String;
    .restart local v2    # "idString":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;)V

    invoke-virtual {p0, v1, v2, v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 136
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 11
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 141
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "sessionToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    iget-object v4, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idType:Ljava/lang/String;

    iget-object v6, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    iget-object v8, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    iget-object v9, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    iget-object v10, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/tigo/mfsapp/service/Connection;->requestRegisterNewUsers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method
