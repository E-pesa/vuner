.class Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;
.super Ljava/lang/Object;
.source "RegisterNewUsersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 103
    .local v6, "mcurrentDate":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 104
    .local v3, "mYear":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 105
    .local v4, "mMonth":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 107
    .local v5, "mDay":I
    iget-object v7, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1$1;-><init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, v7, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mDatePicker:Landroid/app/DatePickerDialog;

    .line 115
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mDatePicker:Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$1;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->mDatePicker:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 117
    return-void
.end method
