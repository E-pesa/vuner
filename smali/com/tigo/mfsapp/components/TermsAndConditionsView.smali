.class public Lcom/tigo/mfsapp/components/TermsAndConditionsView;
.super Landroid/widget/LinearLayout;
.source "TermsAndConditionsView.java"


# instance fields
.field private termsCheckBox:Landroid/widget/CheckBox;

.field private termsTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 7

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c8

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v3, 0x7f0d0255

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsCheckBox:Landroid/widget/CheckBox;

    .line 40
    const v3, 0x7f0d02a8

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsTextView:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "termsAndCondText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06006f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "termsAndCondLinkText":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 46
    .local v0, "termsAndCondLink":Landroid/text/SpannableString;
    new-instance v3, Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/components/TermsAndConditionsView$1;-><init>(Lcom/tigo/mfsapp/components/TermsAndConditionsView;)V

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x11

    .line 46
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    iget-object v3, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    iget-object v3, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v3, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 79
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->termsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setError(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method
