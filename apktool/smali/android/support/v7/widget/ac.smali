.class Landroid/support/v7/widget/ac;
.super Landroid/support/v7/widget/af;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ad;

.field final synthetic b:Landroid/support/v4/view/eh;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/support/v7/widget/ad;Landroid/support/v4/view/eh;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/ad;

    iput-object p3, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v4/view/eh;

    iput-object p4, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/ad;

    iget-object v1, v1, Landroid/support/v7/widget/ad;->b:Landroid/support/v7/widget/ce;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/u;->b(Landroid/support/v7/widget/ce;Z)V

    .line 370
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/ac;->b:Landroid/support/v4/view/eh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ex;)Landroid/support/v4/view/eh;

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 375
    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ce;->a(Landroid/view/View;F)V

    .line 376
    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 377
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/ad;

    iget-object v1, v1, Landroid/support/v7/widget/ad;->b:Landroid/support/v7/widget/ce;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/ce;Z)V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->h(Landroid/support/v7/widget/u;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ac;->a:Landroid/support/v7/widget/ad;

    iget-object v1, v1, Landroid/support/v7/widget/ad;->b:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/ac;->d:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->e(Landroid/support/v7/widget/u;)V

    .line 380
    return-void
.end method
