.class Landroid/support/v4/view/em;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ex;


# instance fields
.field a:Landroid/support/v4/view/eh;


# direct methods
.method constructor <init>(Landroid/support/v4/view/eh;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    iput-object p1, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    .line 506
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 510
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->c(Landroid/support/v4/view/eh;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 511
    const/4 v0, 0x2

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/eh;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/eh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 516
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 518
    instance-of v2, v0, Landroid/support/v4/view/ex;

    if-eqz v2, :cond_3

    .line 519
    check-cast v0, Landroid/support/v4/view/ex;

    .line 521
    :goto_0
    if-eqz v0, :cond_2

    .line 522
    invoke-interface {v0, p1}, Landroid/support/v4/view/ex;->a(Landroid/view/View;)V

    .line 524
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->c(Landroid/support/v4/view/eh;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 529
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->c(Landroid/support/v4/view/eh;)I

    move-result v0

    invoke-static {p1, v0, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 530
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/eh;I)I

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->b(Landroid/support/v4/view/eh;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Landroid/support/v4/view/em;->a:Landroid/support/v4/view/eh;

    invoke-static {v0}, Landroid/support/v4/view/eh;->b(Landroid/support/v4/view/eh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 535
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    instance-of v2, v0, Landroid/support/v4/view/ex;

    if-eqz v2, :cond_3

    .line 538
    check-cast v0, Landroid/support/v4/view/ex;

    .line 540
    :goto_0
    if-eqz v0, :cond_2

    .line 541
    invoke-interface {v0, p1}, Landroid/support/v4/view/ex;->b(Landroid/view/View;)V

    .line 543
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 547
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 548
    const/4 v1, 0x0

    .line 549
    instance-of v2, v0, Landroid/support/v4/view/ex;

    if-eqz v2, :cond_1

    .line 550
    check-cast v0, Landroid/support/v4/view/ex;

    .line 552
    :goto_0
    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v0, p1}, Landroid/support/v4/view/ex;->c(Landroid/view/View;)V

    .line 555
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
