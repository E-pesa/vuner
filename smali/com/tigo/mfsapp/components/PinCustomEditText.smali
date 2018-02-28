.class public Lcom/tigo/mfsapp/components/PinCustomEditText;
.super Lcom/tigo/mfsapp/components/CustomEditText;
.source "PinCustomEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/components/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 22
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 24
    const/4 v2, 0x5

    .line 25
    .local v2, "maxLength":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 26
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getPinCodeDigits()I

    move-result v2

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v3

    .line 31
    .local v3, "oldFilters":[Landroid/text/InputFilter;
    if-nez v3, :cond_2

    .line 32
    new-array v0, v6, [Landroid/text/InputFilter;

    .line 41
    .local v0, "filters":[Landroid/text/InputFilter;
    :cond_1
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v5, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v0, v4

    .line 42
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 43
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setAutoTrimFeature(Z)V

    .line 45
    return-void

    .line 35
    .end local v0    # "filters":[Landroid/text/InputFilter;
    :cond_2
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [Landroid/text/InputFilter;

    .line 36
    .restart local v0    # "filters":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 38
    aget-object v4, v3, v1

    aput-object v4, v0, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isLengthValid()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getPinCodeDigits()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumericDataOnly()Z
    .locals 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "numerical":Z
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 58
    :cond_0
    const-string v1, "YESICA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNumericDataOnly() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return v0
.end method
