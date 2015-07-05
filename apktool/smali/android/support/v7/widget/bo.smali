.class Landroid/support/v7/widget/bo;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/bn;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 8714
    iput-object p1, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bd;)V
    .locals 0

    .prologue
    .line 8714
    invoke-direct {p0, p1}, Landroid/support/v7/widget/bo;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/ce;)V
    .locals 3

    .prologue
    .line 8718
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 8719
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8720
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8722
    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/widget/ce;)V
    .locals 2

    .prologue
    .line 8726
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 8727
    invoke-static {p1}, Landroid/support/v7/widget/ce;->b(Landroid/support/v7/widget/ce;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8728
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8730
    :cond_0
    return-void
.end method

.method public c(Landroid/support/v7/widget/ce;)V
    .locals 2

    .prologue
    .line 8734
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 8735
    invoke-static {p1}, Landroid/support/v7/widget/ce;->b(Landroid/support/v7/widget/ce;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8736
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8738
    :cond_0
    return-void
.end method

.method public d(Landroid/support/v7/widget/ce;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8742
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 8770
    iget-object v0, p1, Landroid/support/v7/widget/ce;->g:Landroid/support/v7/widget/ce;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    if-nez v0, :cond_0

    .line 8771
    iput-object v2, p1, Landroid/support/v7/widget/ce;->g:Landroid/support/v7/widget/ce;

    .line 8772
    const/16 v0, -0x41

    invoke-static {p1}, Landroid/support/v7/widget/ce;->c(Landroid/support/v7/widget/ce;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/ce;->a(II)V

    .line 8776
    :cond_0
    iput-object v2, p1, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    .line 8777
    invoke-static {p1}, Landroid/support/v7/widget/ce;->b(Landroid/support/v7/widget/ce;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8778
    iget-object v0, p0, Landroid/support/v7/widget/bo;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    .line 8780
    :cond_1
    return-void
.end method
