.class Landroid/support/v7/widget/f$4;
.super Landroid/support/v7/widget/f$c;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/f;->p(Landroid/support/v7/widget/RecyclerView$u;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$u;

.field final synthetic b:Landroid/support/v4/view/az;

.field final synthetic c:Landroid/support/v7/widget/f;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/f;Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v4/view/az;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/v7/widget/f$4;->c:Landroid/support/v7/widget/f;

    iput-object p2, p0, Landroid/support/v7/widget/f$4;->a:Landroid/support/v7/widget/RecyclerView$u;

    iput-object p3, p0, Landroid/support/v7/widget/f$4;->b:Landroid/support/v4/view/az;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/f$c;-><init>(Landroid/support/v7/widget/f$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/support/v7/widget/f$4;->c:Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/f$4;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/f;->g(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 202
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v7/widget/f$4;->b:Landroid/support/v4/view/az;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 208
    iget-object v0, p0, Landroid/support/v7/widget/f$4;->c:Landroid/support/v7/widget/f;

    iget-object v1, p0, Landroid/support/v7/widget/f$4;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/f;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/widget/f$4;->c:Landroid/support/v7/widget/f;

    invoke-static {v0}, Landroid/support/v7/widget/f;->d(Landroid/support/v7/widget/f;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/f$4;->a:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/f$4;->c:Landroid/support/v7/widget/f;

    invoke-static {v0}, Landroid/support/v7/widget/f;->e(Landroid/support/v7/widget/f;)V

    .line 211
    return-void
.end method
