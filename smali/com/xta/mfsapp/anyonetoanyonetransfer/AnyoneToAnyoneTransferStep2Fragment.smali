.class public Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "AnyoneToAnyoneTransferStep2Fragment.java"


# static fields
.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"

.field public static final PARAM_AMOUNT_SERVICE:Ljava/lang/String; = "PARAM_AMOUNT_SERVICE"


# instance fields
.field amount:Ljava/lang/Float;

.field amountService:Ljava/lang/Float;

.field bundle:Landroid/os/Bundle;

.field idNumber:Ljava/lang/String;

.field idType:I

.field next:Landroid/widget/Button;

.field selectedIdType:Ljava/lang/String;

.field senderMSISDN:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

.field textIdType:Landroid/widget/Spinner;

.field textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method fillForm()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderMSISDN:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderMSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 100
    :cond_1
    iget v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idType:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idType:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idNumber:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 103
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 104
    :cond_3
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v0, "PARAM_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->amount:Ljava/lang/Float;

    .line 51
    const-string v0, "PARAM_AMOUNT_SERVICE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->amountService:Ljava/lang/Float;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 57
    const v3, 0x7f030019

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 60
    const v3, 0x7f0d005a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 61
    const v3, 0x7f0d005b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdType:Landroid/widget/Spinner;

    .line 62
    const v3, 0x7f0d005c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 64
    const v3, 0x7f0d005d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->next:Landroid/widget/Button;

    .line 66
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getIdTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 67
    .local v1, "idTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090006

    const v5, 0x1020014

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 69
    .local v0, "adapterIdTypes":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/IdType;>;"
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 70
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdType:Landroid/widget/Spinner;

    new-instance v4, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment$1;-><init>(Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->setAutoShowProgressDialog(Z)V

    .line 86
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 88
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->fillForm()V

    .line 90
    return-object v2
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 158
    new-instance v0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;-><init>()V

    .line 160
    .local v0, "fragment":Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_AMOUNT"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 161
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_MSISDN"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_NAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_ID_TYPE"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->selectedIdType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_ID_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->initForm(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 168
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderMSISDN:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->senderName:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idType:I

    .line 150
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->idNumber:Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 153
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    const v3, 0x7f0200d3

    .line 110
    const/4 v0, 0x1

    .line 112
    .local v0, "result":Z
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0600e5

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 115
    const/4 v0, 0x0

    .line 118
    :cond_0
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textSenderName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0600e8

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 121
    const/4 v0, 0x0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->amountService:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 127
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->selectedIdType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    const/4 v0, 0x0

    .line 133
    :cond_2
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0600df

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 136
    const/4 v0, 0x0

    .line 140
    :cond_3
    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
