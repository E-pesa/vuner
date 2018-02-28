.class public Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SelfRegisterNewUsersFormFragment.java"


# static fields
.field public static final PARAM_SAVE_FIRST_NAME:Ljava/lang/String; = "PARAM_SAVE_FIRST_NAME"


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

.field next:Landroid/widget/Button;

.field termsAndConditions:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

.field private viewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    return-void
.end method

.method private fillFormIfValuesNotNull()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method private validateLength(Ljava/lang/String;Lcom/tigo/mfsapp/model/SelfRegistrationField;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "item"    # Lcom/tigo/mfsapp/model/SelfRegistrationField;

    .prologue
    const/4 v3, 0x0

    .line 298
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 300
    .local v0, "isValid":Ljava/lang/Boolean;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isMandatory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 306
    :goto_0
    return v3

    .line 301
    :cond_0
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getMinLength()I

    move-result v2

    .line 302
    .local v2, "min":I
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getMaxLength()I

    move-result v1

    .line 303
    .local v1, "max":I
    if-ltz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v2, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 304
    :cond_1
    if-ltz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 306
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "RegisterNewUsers"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f0601f4

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goToConfirmationFragment()V
    .locals 5

    .prologue
    .line 196
    new-instance v2, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;-><init>()V

    .line 197
    .local v2, "fragment":Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 200
    .local v3, "parser":Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "data":Ljava/lang/String;
    const-string v4, "JSON_ARGUMENTS"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 206
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 108
    const-string v3, "initForm"

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 110
    new-instance v2, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;

    invoke-direct {v2}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;-><init>()V

    .line 114
    .local v2, "response":Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v3, "RegisterFields"

    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "FIELDS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->processResponse(Lorg/json/JSONObject;Z)V

    .line 118
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->getFields()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    if-eqz p1, :cond_1

    .line 84
    const-string v0, "onCreateView savedInstanceState"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 86
    const-string v0, "FIELDS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->initForm(Landroid/os/Bundle;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->submit()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x7f03007c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->next:Landroid/widget/Button;

    .line 59
    const v1, 0x7f0d01d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    iput-object v1, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->termsAndConditions:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->setAutoShowProgressDialog(Z)V

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->setSubmitButton(Landroid/view/View;)V

    .line 66
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 15
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 143
    move-object/from16 v0, p2

    instance-of v11, v0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;

    if-eqz v11, :cond_3

    move-object/from16 v4, p2

    .line 144
    check-cast v4, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;

    .line 145
    .local v4, "fieldsresponse":Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;->getFields()Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0d01d2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 147
    .local v1, "container":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 149
    .local v6, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v2, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 151
    .local v2, "current":Ljava/util/Locale;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v11, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_2

    .line 153
    if-eqz v6, :cond_0

    .line 155
    iget-object v11, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    .line 157
    .local v3, "field":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pin"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 158
    const v11, 0x7f03007a

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 159
    .local v9, "v":Landroid/view/ViewGroup;
    const v11, 0x7f0d01cf

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, "label":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "labeltxt":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isMandatory()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "*"

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 163
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldTypeClass(Lcom/tigo/mfsapp/model/SelfRegistrationField;Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    .line 166
    .local v10, "value":Landroid/view/View;
    iget-object v11, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 168
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isRepeat()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 171
    const v11, 0x7f03007a

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .end local v9    # "v":Landroid/view/ViewGroup;
    check-cast v9, Landroid/view/ViewGroup;

    .line 172
    .restart local v9    # "v":Landroid/view/ViewGroup;
    const v11, 0x7f0d01cf

    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "label":Landroid/widget/TextView;
    check-cast v7, Landroid/widget/TextView;

    .line 176
    .restart local v7    # "label":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0602d7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 175
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldTypeClass(Lcom/tigo/mfsapp/model/SelfRegistrationField;Landroid/content/Context;)Landroid/view/View;

    move-result-object v10

    .line 180
    iget-object v11, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_confirmation"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 182
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    .end local v3    # "field":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .end local v7    # "label":Landroid/widget/TextView;
    .end local v8    # "labeltxt":Ljava/lang/String;
    .end local v9    # "v":Landroid/view/ViewGroup;
    .end local v10    # "value":Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 162
    .restart local v3    # "field":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .restart local v7    # "label":Landroid/widget/TextView;
    .restart local v8    # "labeltxt":Ljava/lang/String;
    .restart local v9    # "v":Landroid/view/ViewGroup;
    :cond_1
    const-string v11, ""

    goto/16 :goto_1

    .line 189
    .end local v3    # "field":Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .end local v7    # "label":Landroid/widget/TextView;
    .end local v8    # "labeltxt":Ljava/lang/String;
    .end local v9    # "v":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->hideProgressDialog()V

    .line 193
    .end local v1    # "container":Landroid/widget/LinearLayout;
    .end local v2    # "current":Ljava/util/Locale;
    .end local v4    # "fieldsresponse":Lcom/tigo/mfsapp/service/SelfRegistrationFieldsResponse;
    .end local v5    # "i":I
    .end local v6    # "inflater":Landroid/view/LayoutInflater;
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 326
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->showProgressDialog()V

    .line 132
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/Connection;->requestSelfRegistrationFields()V

    .line 137
    :cond_1
    :goto_0
    return-void

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->goToConfirmationFragment()V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 16

    .prologue
    .line 224
    const/4 v9, 0x1

    .line 226
    .local v9, "valid":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 227
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 229
    .local v11, "view":Landroid/view/View;
    const-string v10, ""

    .line 230
    .local v10, "value":Ljava/lang/String;
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 231
    .local v8, "p":Lcom/google/gson/Gson;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, "item":Ljava/lang/String;
    const-string v12, "YESICA"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-eqz v11, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "combo"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 236
    move-object v0, v11

    check-cast v0, Lcom/tigo/mfsapp/components/SelectDocumentType;

    move-object v2, v0

    .line 237
    .local v2, "doc":Lcom/tigo/mfsapp/components/SelectDocumentType;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getDocsView()Landroid/widget/Spinner;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 238
    .local v6, "index":I
    if-gez v6, :cond_0

    const/4 v6, 0x0

    .line 239
    :cond_0
    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 282
    .end local v2    # "doc":Lcom/tigo/mfsapp/components/SelectDocumentType;
    .end local v6    # "index":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12, v10}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->setFieldValue(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    :cond_2
    if-eqz v11, :cond_1

    .line 242
    :try_start_1
    move-object v0, v11

    check-cast v0, Lcom/tigo/mfsapp/components/CustomEditText;

    move-object v4, v0

    .line 243
    .local v4, "edit":Lcom/tigo/mfsapp/components/CustomEditText;
    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 245
    const-string v12, "YESICA"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Value "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isMandatory()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->validateLength(Ljava/lang/String;Lcom/tigo/mfsapp/model/SelfRegistrationField;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 249
    const-string v12, ""

    invoke-virtual {v4, v12}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0602db

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v12

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v15

    .line 251
    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f020038

    .line 250
    invoke-virtual {v4, v12, v13}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(Ljava/lang/String;I)V

    .line 256
    const/4 v9, 0x0

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v4}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 260
    const/4 v9, 0x0

    .line 267
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isRepeat()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->viewsMap:Ljava/util/HashMap;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "_confirmation"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    .line 269
    .local v1, "confirm":Lcom/tigo/mfsapp/components/CustomEditText;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 270
    const-string v12, ""

    invoke-virtual {v1, v12}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 271
    const v12, 0x7f0602d8

    const v13, 0x7f020038

    invoke-virtual {v1, v12, v13}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 272
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 261
    .end local v1    # "confirm":Lcom/tigo/mfsapp/components/CustomEditText;
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 262
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->RegistrationFields:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->isMandatory()Z

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v10, v4}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->validateEmail(ZLjava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v12

    if-nez v12, :cond_4

    .line 264
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 278
    .end local v4    # "edit":Lcom/tigo/mfsapp/components/CustomEditText;
    :catch_0
    move-exception v3

    .line 279
    .local v3, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v3}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v7    # "item":Ljava/lang/String;
    .end local v8    # "p":Lcom/google/gson/Gson;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "view":Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->termsAndConditions:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->isChecked()Z

    move-result v12

    if-nez v12, :cond_7

    .line 286
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->termsAndConditions:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const v13, 0x7f06006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 287
    const v12, 0x7f06003e

    const v13, 0x7f06006e

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 288
    const/4 v9, 0x0

    .line 294
    .end local v5    # "i":I
    :cond_7
    :goto_3
    return v9

    .line 291
    :cond_8
    const v12, 0x7f06003e

    const v13, 0x7f060137

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 292
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 214
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 215
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0d024a

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 216
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 218
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method
