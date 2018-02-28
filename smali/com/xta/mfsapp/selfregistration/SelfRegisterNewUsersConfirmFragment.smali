.class public Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "SelfRegisterNewUsersConfirmFragment.java"


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
.field private RegistrationFields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SelfRegistrationField;",
            ">;"
        }
    .end annotation
.end field

.field private SelectedButton:I

.field private crfNumber:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->showRegisterDevice()V

    return-void
.end method

.method private getNewRegistrationForm()V
    .locals 4

    .prologue
    .line 286
    new-instance v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;-><init>()V

    .line 287
    .local v0, "fragment":Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 288
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 289
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0d024a

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 290
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 291
    return-void
.end method

.method private parseData(Ljava/lang/String;)V
    .locals 5
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v2, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;

    invoke-direct {v2}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;-><init>()V

    .line 67
    .local v2, "response":Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "RegisterFields"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->processResponse(Lorg/json/JSONObject;Z)V

    .line 70
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private showRegisterDevice()V
    .locals 3

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 302
    return-void
.end method

.method private validateLength(Ljava/lang/String;Lcom/tigo/mfsapp/model/SelfRegistrationField;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/tigo/mfsapp/model/SelfRegistrationField;

    .prologue
    const/4 v4, 0x0

    .line 276
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 277
    .local v0, "isValid":Ljava/lang/Boolean;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getMinLength()I

    move-result v2

    .line 278
    .local v2, "min":I
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getMaxLength()I

    move-result v1

    .line 279
    .local v1, "max":I
    if-ltz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v2, :cond_0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 280
    :cond_0
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 282
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const-string v1, "JSON_ARGUMENTS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->parseData(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    if-eqz p1, :cond_0

    .line 89
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    .line 152
    iget v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    const v1, 0x7f0d01d6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->submit()V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    const v1, 0x7f0d01d7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->submit()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v9, 0x7f03007d

    iput v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->layoutId:I

    .line 96
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->fee:Ljava/lang/Float;

    .line 97
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->total:Ljava/lang/Float;

    .line 98
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->amount:Ljava/lang/Float;

    .line 100
    iget v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->layoutId:I

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 102
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0d01d6

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v9, 0x7f0d01d7

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v9, 0x7f0d01d4

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "cont":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 109
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "pin"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    const v9, 0x7f0d01d5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 111
    .local v4, "pinl":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 113
    const v9, 0x7f0300b8

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 114
    .local v5, "pinv":Landroid/view/View;
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    const v9, 0x7f0d0121

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 116
    .local v6, "t":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0602d9

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v9, 0x7f0d0279

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6    # "t":Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 120
    .restart local v6    # "t":Landroid/widget/TextView;
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isRepeat()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0602d7

    const/4 v9, 0x1

    new-array v12, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    .end local v4    # "pinl":Landroid/view/ViewGroup;
    .end local v5    # "pinv":Landroid/view/View;
    .end local v6    # "t":Landroid/widget/TextView;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 123
    .restart local v4    # "pinl":Landroid/view/ViewGroup;
    .restart local v5    # "pinv":Landroid/view/View;
    .restart local v6    # "t":Landroid/widget/TextView;
    :cond_1
    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    const v9, 0x7f0d027a

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 129
    .end local v4    # "pinl":Landroid/view/ViewGroup;
    .end local v5    # "pinv":Landroid/view/View;
    .end local v6    # "t":Landroid/widget/TextView;
    :cond_2
    const v9, 0x7f030079

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 130
    .local v2, "item":Landroid/view/ViewGroup;
    const v9, 0x7f0d01cd

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 131
    .local v3, "label":Landroid/widget/TextView;
    const v9, 0x7f0d01ce

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 132
    .local v7, "value":Landroid/widget/TextView;
    if-eqz v3, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_3
    if-eqz v7, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 143
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/view/ViewGroup;
    .end local v3    # "label":Landroid/widget/TextView;
    .end local v7    # "value":Landroid/widget/TextView;
    :cond_5
    return-object v8
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 337
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 340
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 344
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->hideProgressDialog()V

    .line 188
    instance-of v5, p2, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterResponse;

    if-eqz v5, :cond_2

    .line 190
    check-cast p2, Lcom/tigo/mfsapp/service/JsonResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/JsonResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 191
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v4, ""

    .line 192
    .local v4, "transactionId":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v5, "TransactionID"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    :try_start_0
    const-string v5, "TransactionID"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 203
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getConfirmationTitleString()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "title":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getConfirmationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "idString":Ljava/lang/String;
    new-instance v5, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;-><init>(Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;)V

    invoke-virtual {p0, v3, v1, v5}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 223
    .end local v1    # "idString":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "title":Ljava/lang/String;
    .end local v4    # "transactionId":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 197
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v4    # "transactionId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "transactionId":Ljava/lang/String;
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    instance-of v5, p2, Lcom/tigo/mfsapp/service/SelfRegistrationCancelResponse;

    if-eqz v5, :cond_1

    .line 220
    invoke-direct {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getNewRegistrationForm()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 351
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 163
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 169
    iget v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    const v1, 0x7f0d01d6

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestSelfRegistrationRegister(Ljava/util/ArrayList;)V

    .line 176
    :cond_0
    iget v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->SelectedButton:I

    const v1, 0x7f0d01d7

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestSelfRegistrationCancelRegister(Ljava/util/ArrayList;)V

    .line 182
    :cond_1
    return-void
.end method

.method public onValidateData()Z
    .locals 13

    .prologue
    .line 227
    const/4 v7, 0x1

    .line 228
    .local v7, "status":Z
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0d01d5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 229
    .local v6, "pinl":Landroid/view/ViewGroup;
    if-eqz v6, :cond_4

    .line 231
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 233
    :try_start_0
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    .line 234
    .local v3, "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 235
    .local v8, "v":Landroid/view/View;
    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    .line 236
    const v9, 0x7f0d0123

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 237
    .local v4, "pin1":Lcom/tigo/mfsapp/components/PinCustomEditText;
    const v9, 0x7f0d027a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 239
    .local v5, "pin2":Lcom/tigo/mfsapp/components/PinCustomEditText;
    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isMandatory()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isNumericDataOnly()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v3}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->validateLength(Ljava/lang/String;Lcom/tigo/mfsapp/model/SelfRegistrationField;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 241
    :cond_0
    const-string v9, ""

    invoke-virtual {v4, v9}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setText(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0602db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 245
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 243
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f020038

    .line 242
    invoke-virtual {v4, v9, v10}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(Ljava/lang/String;I)V

    .line 248
    const/4 v7, 0x0

    .line 258
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 259
    .local v2, "index":I
    const/4 v9, -0x1

    if-le v2, v9, :cond_2

    .line 260
    iget-object v9, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setFieldValue(Ljava/lang/String;)V

    .line 231
    .end local v2    # "index":I
    .end local v3    # "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .end local v4    # "pin1":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .end local v5    # "pin2":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .end local v8    # "v":Landroid/view/View;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 249
    .restart local v3    # "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .restart local v4    # "pin1":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .restart local v5    # "pin2":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .restart local v8    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isRepeat()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 251
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 252
    const-string v9, ""

    invoke-virtual {v5, v9}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setText(Ljava/lang/String;)V

    .line 253
    const v9, 0x7f0602d8

    const v10, 0x7f020038

    invoke-virtual {v5, v9, v10}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v7, 0x0

    goto :goto_1

    .line 264
    .end local v3    # "item":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .end local v4    # "pin1":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .end local v5    # "pin2":Lcom/tigo/mfsapp/components/PinCustomEditText;
    .end local v8    # "v":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    goto :goto_2

    .line 271
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "i":I
    :cond_4
    return v7
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 312
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 313
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0d024a

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 314
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 316
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method
