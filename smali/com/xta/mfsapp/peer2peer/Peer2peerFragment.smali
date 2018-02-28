.class public Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "Peer2peerFragment.java"


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"


# instance fields
.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field private isFee:Ljava/lang/Boolean;

.field private isLookup:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 44
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isLookup:Ljava/lang/Boolean;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isFee:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Send_Money"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 52
    const v1, 0x7f0300af

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 55
    const v1, 0x7f0d0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 57
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textLabelDescription:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 60
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 66
    :cond_0
    const v1, 0x7f0d025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->next:Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->setSubmitButton(Landroid/view/View;)V

    .line 69
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isLookup:Ljava/lang/Boolean;

    .line 70
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isFee:Ljava/lang/Boolean;

    .line 72
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x1

    .line 118
    instance-of v1, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v1, :cond_3

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isLookup:Ljava/lang/Boolean;

    .line 122
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv.tigo.mfsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->tigoNameResponse:Ljava/lang/String;

    .line 138
    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isLookup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isFee:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    new-instance v0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;-><init>()V

    .line 141
    .local v0, "fragment":Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setMSISDN(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 143
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 144
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 145
    const v1, 0x7f0602b7

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setTextTitle(I)V

    .line 146
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 150
    .end local v0    # "fragment":Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;
    :cond_1
    return-void

    .line 127
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    check-cast p2, Lcom/tigo/mfsapp/service/LookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->tigoNameResponse:Ljava/lang/String;

    goto :goto_0

    .line 132
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_3
    instance-of v1, p2, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;

    if-eqz v1, :cond_0

    .line 134
    check-cast p2, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->fee:Ljava/lang/Float;

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isFee:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 93
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->tigoNameResponse:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->amount:Ljava/lang/Float;

    .line 96
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz.tigo.mfsap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 100
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->isLookup:Ljava/lang/Boolean;

    .line 101
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    :goto_0
    const-string v1, "YESICA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestPeer2peerFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 112
    return-void

    .line 102
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->tigoNameResponse:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const v10, 0x7f06013c

    const v9, 0x7f0200d3

    const/4 v8, 0x0

    .line 159
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[0-9]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v7}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setPhoneSelected(Landroid/text/Editable;)V

    .line 161
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v5, v11}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setContactName(Ljava/lang/String;)V

    .line 165
    :cond_0
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 166
    .local v3, "valid":Ljava/lang/Boolean;
    const-string v5, ""

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v6, 0x7f0601d4

    const v7, 0x7f0200d8

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 169
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 186
    :cond_1
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 191
    .local v1, "amount":Ljava/lang/Float;
    :goto_1
    const-string v5, ""

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpg-float v5, v5, v12

    if-gtz v5, :cond_3

    .line 193
    :cond_2
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v10, v9}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 194
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 201
    :cond_3
    :try_start_1
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 202
    .local v0, "P":Lcom/google/gson/Gson;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    .line 204
    .local v4, "w":Lcom/tigo/mfsapp/model/Wallet;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallet info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    cmpl-float v5, v5, v12

    if-ltz v5, :cond_4

    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 208
    const v5, 0x7f06003e

    const v6, 0x7f060171

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 209
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v6, 0x7f060171

    const v7, 0x7f0200d3

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 210
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 222
    .end local v0    # "P":Lcom/google/gson/Gson;
    .end local v4    # "w":Lcom/tigo/mfsapp/model/Wallet;
    :cond_4
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 223
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 232
    :cond_5
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .end local v1    # "amount":Ljava/lang/Float;
    :goto_4
    return v5

    .line 170
    :cond_6
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v5, v6}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 172
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_0

    .line 173
    :cond_7
    const-string v5, ""

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 177
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v6, 0x7f0601d4

    const v7, 0x7f0200d8

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 178
    const v5, 0x7f06003e

    const v6, 0x7f0602cb

    invoke-virtual {p0, v5, v6, v11}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 179
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 181
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_4

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .restart local v1    # "amount":Ljava/lang/Float;
    goto/16 :goto_1

    .line 213
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 216
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v10, v9}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 217
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_2

    .line 224
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 226
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const v5, 0x7f06003e

    invoke-virtual {p0, v5, v10, v11}, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 228
    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v10, v9}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 229
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_3
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method
