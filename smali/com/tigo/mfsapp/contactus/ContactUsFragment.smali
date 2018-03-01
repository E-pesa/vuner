.class public Lcom/tigo/mfsapp/contactus/ContactUsFragment;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "ContactUsFragment.java"


# instance fields
.field private callButton:Landroid/widget/Button;

.field private noCallTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    return-void
.end method

.method private setStatusPhoneAviability()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->callButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->noCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "noCallText":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->noCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v0    # "noCallText":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->callButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->noCallTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected callCustomerRepresentative()V
    .locals 4

    .prologue
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "Contact_Us"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 31
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->callButton:Landroid/widget/Button;

    .line 33
    iget-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->callButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/contactus/ContactUsFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment$1;-><init>(Lcom/tigo/mfsapp/contactus/ContactUsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f0d0101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->noCallTextView:Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->setStatusPhoneAviability()V

    .line 47
    return-object v0
.end method
