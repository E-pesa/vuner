.class Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;
.super Ljava/lang/Object;
.source "MsfMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/main/MsfMainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;
    .param p2, "x1"    # Lcom/tigo/mfsapp/main/MsfMainActivity$1;

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$DrawerItemClickListener;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->access$200(Lcom/tigo/mfsapp/main/MsfMainActivity;Ljava/lang/Object;)V

    .line 287
    return-void
.end method
