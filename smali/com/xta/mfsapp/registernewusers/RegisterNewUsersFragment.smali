.class public Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "RegisterNewUsersFragment.java"


# static fields
.field public static final PARAM_SAVE_FIRST_NAME:Ljava/lang/String; = "PARAM_SAVE_FIRST_NAME"


# instance fields
.field private CRFNumber:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private idNumber:Ljava/lang/String;

.field private idTypePosition:I

.field private lastname:Ljava/lang/String;

.field mDatePicker:Landroid/app/DatePickerDialog;

.field private mobileNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nationalityPosition:I

.field next:Landroid/widget/Button;

.field private residentialAddress:Ljava/lang/String;

.field private selectedIdType:Ljava/lang/String;

.field private selectedNationality:Ljava/lang/String;

.field textCRFNumber:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

.field textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

.field textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

.field textIdType:Landroid/widget/Spinner;

.field textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

.field textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field textNationality:Landroid/widget/Spinner;

.field textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->selectedIdType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->selectedNationality:Ljava/lang/String;

    return-object p1
.end method

.method private fillFormIfValuesNotNull()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->lastname:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mobileNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 170
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idTypePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 173
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->dateOfBirth:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 181
    :cond_4
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    iget v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->nationalityPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 182
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->residentialAddress:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->residentialAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 186
    :cond_5
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->CRFNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textCRFNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->CRFNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 190
    :cond_6
    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const-string v0, "RegisterNewUsers"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    const v0, 0x7f0601f4

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v0, "initForm"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    if-eqz p1, :cond_0

    .line 200
    const-string v0, "onCreateView savedInstanceState"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 202
    const-string v0, "PARAM_SAVE_FIRST_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const-string v1, "PARAM_SAVE_FIRST_NAME"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1090006

    const v6, 0x1020014

    const/4 v7, 0x0

    .line 73
    const v5, 0x7f030077

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 75
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0d01ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    .line 76
    const v5, 0x7f0d01bb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    .line 77
    const v5, 0x7f0d01bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 78
    const v5, 0x7f0d01bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    .line 79
    const v5, 0x7f0d01be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 80
    const v5, 0x7f0d01bf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 81
    const v5, 0x7f0d01c0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    .line 82
    const v5, 0x7f0d01c1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 83
    const v5, 0x7f0d01c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textCRFNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 85
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getCountryList()Ljava/util/ArrayList;

    move-result-object v2

    .line 86
    .local v2, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Country;>;"
    if-eqz v2, :cond_0

    .line 88
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5, v8, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 89
    .local v0, "adapterCountries":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/Country;>;"
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    .end local v0    # "adapterCountries":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/Country;>;"
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getIdTypes()Ljava/util/ArrayList;

    move-result-object v3

    .line 92
    .local v3, "idTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    if-eqz v3, :cond_1

    .line 94
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5, v8, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 95
    .local v1, "adapterIdTypes":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/IdType;>;"
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 98
    .end local v1    # "adapterIdTypes":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/IdType;>;"
    :cond_1
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;

    invoke-direct {v6, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    new-instance v6, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$2;

    invoke-direct {v6, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$2;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 133
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    new-instance v6, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$3;

    invoke-direct {v6, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$3;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 147
    const v5, 0x7f0d01c3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->next:Landroid/widget/Button;

    .line 149
    invoke-virtual {p0, v7}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->setAutoShowProgressDialog(Z)V

    .line 150
    iget-object v5, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->setSubmitButton(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->fillFormIfValuesNotNull()V

    .line 154
    return-object v4
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 232
    new-instance v1, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;-><init>()V

    .line 233
    .local v1, "fragment":Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->name:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->lastname:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mobileNumber:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idTypePosition:I

    .line 239
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idNumber:Ljava/lang/String;

    .line 240
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->dateOfBirth:Ljava/lang/String;

    .line 241
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->nationalityPosition:I

    .line 242
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->residentialAddress:Ljava/lang/String;

    .line 243
    iget-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textCRFNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->CRFNumber:Ljava/lang/String;

    .line 245
    const-string v2, "PARAM_FIRST_NAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "PARAM_LAST_NAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->lastname:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v2, "PARAM_MOBILE_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mobileNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v2, "PARAM_ID_TYPE"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->selectedIdType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "PARAM_ID_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "PARAM_DATE_OF_BIRTH"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "PARAM_NATIONALITY"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->selectedNationality:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "PARAM_RESIDENCIAL_ADDRESS"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->residentialAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "PARAM_CRF_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->CRFNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 257
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 357
    const-string v0, "onSaveInstanceState"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 359
    const-string v0, "PARAM_SAVE_FIRST_NAME"

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 227
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    const v3, 0x7f020038

    .line 289
    const/4 v0, 0x1

    .line 290
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const v2, 0x7f0601e9

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textLastName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const v2, 0x7f0601f2

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 298
    const/4 v0, 0x0

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0601ec

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 303
    const/4 v0, 0x0

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 309
    const/4 v0, 0x0

    .line 312
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0601e6

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 315
    const/4 v0, 0x0

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textNationality:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 321
    const/4 v0, 0x0

    .line 324
    :cond_5
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 326
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textResidencialAddress:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0601fd

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 327
    const/4 v0, 0x0

    .line 330
    :cond_6
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 332
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0601e3

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 333
    const/4 v0, 0x0

    .line 336
    :cond_7
    return v0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 5
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 263
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 265
    .local v1, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    instance-of v3, p1, Lcom/tigo/mfsapp/common/BaseFragment;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Lcom/tigo/mfsapp/common/BaseFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/common/BaseFragment;->isNoneVisual()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 277
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 278
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 282
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 284
    return-void

    .line 270
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const v3, 0x7f0d024a

    invoke-virtual {v1, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return v0
.end method
