.class Landroid/support/v7/widget/d;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private b:Landroid/support/v7/widget/g;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/g;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p2, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/widget/g;

    .line 747
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->f(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/i;->f()V

    .line 751
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->g(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/z;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 752
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/widget/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/widget/d;->b:Landroid/support/v7/widget/g;

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/g;)Landroid/support/v7/widget/g;

    .line 755
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/d;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/d;)Landroid/support/v7/widget/d;

    .line 756
    return-void
.end method
