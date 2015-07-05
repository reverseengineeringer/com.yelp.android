.class Landroid/support/v7/widget/aa;
.super Landroid/support/v7/widget/af;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ce;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/eh;

.field final synthetic e:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/support/v7/widget/ce;IILandroid/support/v4/view/eh;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Landroid/support/v7/widget/aa;->e:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ce;

    iput p3, p0, Landroid/support/v7/widget/aa;->b:I

    iput p4, p0, Landroid/support/v7/widget/aa;->c:I

    iput-object p5, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v4/view/eh;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/aa;->e:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->h(Landroid/support/v7/widget/ce;)V

    .line 289
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/aa;->d:Landroid/support/v4/view/eh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ex;)Landroid/support/v4/view/eh;

    .line 302
    iget-object v0, p0, Landroid/support/v7/widget/aa;->e:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->e(Landroid/support/v7/widget/ce;)V

    .line 303
    iget-object v0, p0, Landroid/support/v7/widget/aa;->e:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->g(Landroid/support/v7/widget/u;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aa;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Landroid/support/v7/widget/aa;->e:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->e(Landroid/support/v7/widget/u;)V

    .line 305
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget v0, p0, Landroid/support/v7/widget/aa;->b:I

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p1, v1}, Landroid/support/v4/view/ce;->a(Landroid/view/View;F)V

    .line 295
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aa;->c:I

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1, v1}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method
