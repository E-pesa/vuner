.class Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;
.super Ljava/lang/Object;
.source "MiniStatementFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 70
    .local v6, "mcurrentDate":Ljava/util/Calendar;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 71
    .local v3, "mYear":I
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 72
    .local v4, "mMonth":I
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 74
    .local v5, "mDay":I
    iget-object v7, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1$1;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-static {v7, v0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$002(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;

    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$000(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Landroid/app/DatePickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$000(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Landroid/app/DatePickerDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$200(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Landroid/widget/DatePicker;)V

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$000(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Landroid/app/DatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 85
    return-void
.end method
