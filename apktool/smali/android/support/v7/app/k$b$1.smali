.class Landroid/support/v7/app/k$b$1;
.super Landroid/support/v4/view/be;
.source "AppCompatDelegateImplV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/k$b;->a(Lcom/yelp/android/r/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/k$b;


# direct methods
.method constructor <init>(Landroid/support/v7/app/k$b;)V
    .locals 0

    .prologue
    .line 1664
    iput-object p1, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1667
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1668
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->o:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1669
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->o:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1673
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1674
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->q:Landroid/support/v4/view/az;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 1675
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iput-object v2, v0, Landroid/support/v7/app/k;->q:Landroid/support/v4/view/az;

    .line 1676
    return-void

    .line 1670
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1671
    iget-object v0, p0, Landroid/support/v7/app/k$b$1;->a:Landroid/support/v7/app/k$b;

    iget-object v0, v0, Landroid/support/v7/app/k$b;->a:Landroid/support/v7/app/k;

    iget-object v0, v0, Landroid/support/v7/app/k;->n:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->w(Landroid/view/View;)V

    goto :goto_0
.end method
