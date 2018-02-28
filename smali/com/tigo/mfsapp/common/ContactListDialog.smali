.class public Lcom/tigo/mfsapp/common/ContactListDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "ContactListDialog.java"


# instance fields
.field private contactListFragment:Lcom/tigo/mfsapp/common/ContactListFragment;

.field private onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/common/ContactListDialog;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListDialog;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    return-object v0
.end method


# virtual methods
.method public getOnContactListListener()Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 55
    .local v0, "dialog":Landroid/app/Dialog;
    const v1, 0x7f06023f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 57
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    const v1, 0x7f030044

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 24
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/common/ContactListFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->contactListFragment:Lcom/tigo/mfsapp/common/ContactListFragment;

    .line 25
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->contactListFragment:Lcom/tigo/mfsapp/common/ContactListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/common/ContactListFragment;->setFirterable(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0d0102

    iget-object v3, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->contactListFragment:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 27
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->contactListFragment:Lcom/tigo/mfsapp/common/ContactListFragment;

    new-instance v2, Lcom/tigo/mfsapp/common/ContactListDialog$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/ContactListDialog$1;-><init>(Lcom/tigo/mfsapp/common/ContactListDialog;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/common/ContactListFragment;->setOnContactListListener(Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;)V

    .line 47
    return-object v0
.end method

.method public setOnContactListListener(Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;)V
    .locals 0
    .param p1, "onContactListListener"    # Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListDialog;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    .line 63
    return-void
.end method
