.class Landroid/support/v7/widget/bg;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/t;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 455
    if-eqz v0, :cond_0

    .line 456
    iget-object v1, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 458
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 459
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 444
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 445
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 483
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 492
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->k()V

    .line 494
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 495
    return-void
.end method

.method public b(Landroid/view/View;)Landroid/support/v7/widget/ce;
    .locals 1

    .prologue
    .line 477
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 468
    invoke-virtual {p0}, Landroid/support/v7/widget/bg;->a()I

    move-result v1

    .line 469
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 470
    iget-object v2, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bg;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 473
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bg;->b(I)Landroid/view/View;

    move-result-object v0

    .line 500
    if-eqz v0, :cond_1

    .line 501
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "called detach on an already detached child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ce;->a(I)V

    .line 513
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bg;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 514
    return-void
.end method
