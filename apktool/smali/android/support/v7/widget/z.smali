.class Landroid/support/v7/widget/z;
.super Landroid/support/v7/widget/af;
.source "DefaultItemAnimator.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ce;

.field final synthetic b:Landroid/support/v4/view/eh;

.field final synthetic c:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;Landroid/support/v7/widget/ce;Landroid/support/v4/view/eh;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Landroid/support/v7/widget/z;->c:Landroid/support/v7/widget/u;

    iput-object p2, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/ce;

    iput-object p3, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v4/view/eh;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/af;-><init>(Landroid/support/v7/widget/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->i(Landroid/support/v7/widget/ce;)V

    .line 231
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/z;->b:Landroid/support/v4/view/eh;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ex;)Landroid/support/v4/view/eh;

    .line 240
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/support/v7/widget/u;

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/u;->f(Landroid/support/v7/widget/ce;)V

    .line 241
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->f(Landroid/support/v7/widget/u;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/z;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/z;->c:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->e(Landroid/support/v7/widget/u;)V

    .line 243
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 235
    return-void
.end method