.class final Lcom/tigo/mfsapp/model/SelfRegistrationField$2;
.super Ljava/lang/Object;
.source "SelfRegistrationField.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldTypeClass(Lcom/tigo/mfsapp/model/SelfRegistrationField;Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$2;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 190
    .local v6, "mcurrentDate":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 191
    .local v3, "mYear":I
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 192
    .local v4, "mMonth":I
    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 194
    .local v5, "mDay":I
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/model/SelfRegistrationField$2$1;

    invoke-direct {v2, p0, p1}, Lcom/tigo/mfsapp/model/SelfRegistrationField$2$1;-><init>(Lcom/tigo/mfsapp/model/SelfRegistrationField$2;Landroid/view/View;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 202
    .local v0, "mDatePicker":Landroid/app/DatePickerDialog;
    iget-object v1, p0, Lcom/tigo/mfsapp/model/SelfRegistrationField$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 204
    return-void
.end method
