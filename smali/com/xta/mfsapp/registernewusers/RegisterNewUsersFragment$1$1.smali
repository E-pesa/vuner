.class Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1$1;
.super Ljava/lang/Object;
.source "RegisterNewUsersFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1$1;->this$1:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "datepicker"    # Landroid/widget/DatePicker;
    .param p2, "selectedyear"    # I
    .param p3, "selectedmonth"    # I
    .param p4, "selectedday"    # I

    .prologue
    .line 111
    add-int/lit8 p3, p3, 0x1

    .line 112
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1$1;->this$1:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->textDateOfBirth:Lcom/tigo/mfsapp/components/CustomEditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 113
    return-void
.end method
