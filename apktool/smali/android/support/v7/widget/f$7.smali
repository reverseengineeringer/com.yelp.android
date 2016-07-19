.class Landroid/support/v7/widget/f$7;
.super Landroid/support/v7/widget/f$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/f$a;

.field final synthetic b:Landroid/support/v4/view/az;

.field final synthetic c:Landroid/support/v7/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/f;Landroid/support/v7/widget/f$a;Landroid/support/v4/view/az;)V
    .locals 1

    .prologue
    .line 345
    iput-object p1, p0, Landroid/support/v7/widget/f$7;->c:Landroid/support/v7/widget/f;

    iput-object p2, p0, Landroid/support/v7/widget/f$7;->a:Landroid/support/v7/widget/f$a;

    iput-object p3, p0, Landroid/support/v7/widget/f$7;->b:Landroid/support/v4/view/az;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/f$c;-><init>(Landroid/support/v7/widget/f$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/v7/widget/f$7;->c:Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/f$7;->a:Landroid/support/v7/widget/f$a;

    iget-object v1, v1, Landroid/support/v7/widget/f$a;->a:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/f;->b(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 349
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/f$7;->b:Landroid/support/v4/view/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 354
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 355
    invoke-static {p1, v2}, Landroid/support/v4/view/ai;->a(Landroid/view/View;F)V

    .line 356
    invoke-static {p1, v2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/f$7;->c:Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/f$7;->a:Landroid/support/v7/widget/f$a;

    iget-object v1, v1, Landroid/support/v7/widget/f$a;->a:Landroid/support/v7/widget/RecyclerView$u;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/f;->a(Landroid/support/v7/widget/RecyclerView$u;Z)V

    .line 358
    iget-object v0, p0, Landroid/support/v7/widget/f$7;->c:Landroid/support/v7/widget/f;

    invoke-static {v0}, Landroid/support/v7/widget/f;->h(Landroid/support/v7/widget/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/f$7;->a:Landroid/support/v7/widget/f$a;

    iget-object v1, v1, Landroid/support/v7/widget/f$a;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/f$7;->c:Landroid/support/v7/widget/f;

    invoke-static {v0}, Landroid/support/v7/widget/f;->e(Landroid/support/v7/widget/f;)V

    .line 360
    return-void
.end method
