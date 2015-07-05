.class Landroid/support/v7/widget/bh;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/p;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/ce;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 522
    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->a(IZ)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 523
    if-nez v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-object v0

    .line 528
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    iget-object v3, v1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/r;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 534
    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, p2}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;I)I

    .line 542
    return-void
.end method

.method public a(Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->c(Landroid/support/v7/widget/q;)V

    .line 559
    return-void
.end method

.method public b(II)V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 547
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 548
    return-void
.end method

.method public b(Landroid/support/v7/widget/q;)V
    .locals 0

    .prologue
    .line 580
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bh;->c(Landroid/support/v7/widget/q;)V

    .line 581
    return-void
.end method

.method public c(II)V
    .locals 2

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->f(II)V

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 554
    return-void
.end method

.method c(Landroid/support/v7/widget/q;)V
    .locals 5

    .prologue
    .line 562
    iget v0, p1, Landroid/support/v7/widget/q;->a:I

    packed-switch v0, :pswitch_data_0

    .line 576
    :goto_0
    return-void

    .line 564
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/q;->b:I

    iget v3, p1, Landroid/support/v7/widget/q;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/q;->b:I

    iget v3, p1, Landroid/support/v7/widget/q;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/q;->b:I

    iget v3, p1, Landroid/support/v7/widget/q;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/RecyclerView;II)V

    goto :goto_0

    .line 573
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    iget v2, p1, Landroid/support/v7/widget/q;->b:I

    iget v3, p1, Landroid/support/v7/widget/q;->c:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;III)V

    goto :goto_0

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->e(II)V

    .line 586
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 587
    return-void
.end method

.method public e(II)V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->d(II)V

    .line 593
    iget-object v0, p0, Landroid/support/v7/widget/bh;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 594
    return-void
.end method
