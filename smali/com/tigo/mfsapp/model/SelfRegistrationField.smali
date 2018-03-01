.class public Lcom/tigo/mfsapp/model/SelfRegistrationField;
.super Ljava/lang/Object;
.source "SelfRegistrationField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    }
.end annotation


# instance fields
.field private FieldValue:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private Mandatory:Z

.field private MaxLength:I

.field private MinLength:I

.field private Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

.field private Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

.field private Repeat:Z

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->FieldValue:Ljava/lang/String;

    return-void
.end method

.method public static getFieldTypeClass(Lcom/tigo/mfsapp/model/SelfRegistrationField;Landroid/content/Context;)Landroid/view/View;
    .locals 11
    .param p0, "item"    # Lcom/tigo/mfsapp/model/SelfRegistrationField;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 147
    new-instance v4, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-direct {v4, p1, v10}, Lcom/tigo/mfsapp/components/CustomEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    .local v4, "value":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602d9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "hint":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "onlynumbers"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v5, v4

    .line 150
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    move-object v5, v4

    .line 151
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 208
    :cond_1
    :goto_0
    return-object v4

    .line 152
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 153
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    move-object v5, v4

    .line 154
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "combo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    new-instance v4, Lcom/tigo/mfsapp/components/SelectDocumentType;

    .end local v4    # "value":Landroid/view/View;
    invoke-direct {v4, p1, v10}, Lcom/tigo/mfsapp/components/SelectDocumentType;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 157
    .restart local v4    # "value":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptionsNames()Ljava/util/ArrayList;

    move-result-object v2

    .line 158
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x109000a

    const v6, 0x1020014

    invoke-direct {v0, p1, v5, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    move-object v5, v4

    .line 159
    check-cast v5, Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-virtual {v5, v2}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setList(Ljava/util/ArrayList;)V

    move-object v5, v4

    .line 160
    check-cast v5, Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-virtual {v5, v0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setAdapter(Landroid/widget/ArrayAdapter;)V

    move-object v5, v4

    .line 161
    check-cast v5, Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0602bf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setLabel(Ljava/lang/String;)V

    move-object v5, v4

    .line 162
    check-cast v5, Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setTag(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    move-object v5, v4

    .line 164
    check-cast v5, Lcom/tigo/mfsapp/components/SelectDocumentType;

    new-instance v6, Lcom/tigo/mfsapp/model/SelfRegistrationField$1;

    invoke-direct {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField$1;-><init>()V

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0

    .line 176
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "email"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v4

    .line 177
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    move-object v5, v4

    .line 178
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setRawInputType(I)V

    goto/16 :goto_0

    .line 179
    :cond_5
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "date"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    .line 180
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    move-object v5, v4

    .line 182
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setRawInputType(I)V

    move-object v5, v4

    .line 183
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setTag(Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    move-object v5, v4

    .line 185
    check-cast v5, Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v5

    new-instance v6, Lcom/tigo/mfsapp/model/SelfRegistrationField$2;

    invoke-direct {v6, v3}, Lcom/tigo/mfsapp/model/SelfRegistrationField$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getFieldValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->FieldValue:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Id:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxLength()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->MaxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->MinLength:I

    return v0
.end method

.method public getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    return-object v0
.end method

.method public getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    return-object v0
.end method

.method public getOptionsNames()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v1, "optionsNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    iget-object v2, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    array-length v5, v5

    if-lez v5, :cond_1

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 81
    const-string v2, "YESICA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opt name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_0
    move v2, v4

    .line 79
    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 85
    :cond_2
    return-object v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public isMandatory()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Mandatory:Z

    return v0
.end method

.method public isRepeat()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Repeat:Z

    return v0
.end method

.method public setFieldValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldValue"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->FieldValue:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Id:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMandatory(Z)V
    .locals 0
    .param p1, "mandatory"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Mandatory:Z

    .line 102
    return-void
.end method

.method public setMaxLength(I)V
    .locals 0
    .param p1, "maxLength"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->MaxLength:I

    .line 110
    return-void
.end method

.method public setMinLength(I)V
    .locals 0
    .param p1, "minLength"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->MinLength:I

    .line 118
    return-void
.end method

.method public setName(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    .locals 0
    .param p1, "name"    # Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Name:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 142
    return-void
.end method

.method public setOptions([Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;)V
    .locals 0
    .param p1, "options"    # [Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Options:[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    .line 74
    return-void
.end method

.method public setRepeat(Z)V
    .locals 0
    .param p1, "repeat"    # Z

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Repeat:Z

    .line 94
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField;->Type:Ljava/lang/String;

    .line 126
    return-void
.end method
