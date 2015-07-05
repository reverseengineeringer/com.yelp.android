.class Landroid/support/v7/widget/cy;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# virtual methods
.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2744
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/cy;->a:I

    .line 2745
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/cy;->b:I

    .line 2746
    iput-boolean v1, p0, Landroid/support/v7/widget/cy;->c:Z

    .line 2747
    iput-boolean v1, p0, Landroid/support/v7/widget/cy;->d:Z

    .line 2748
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 2756
    iget-boolean v0, p0, Landroid/support/v7/widget/cy;->c:Z

    if-eqz v0, :cond_0

    .line 2757
    iget-object v0, p0, Landroid/support/v7/widget/cy;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/cy;->b:I

    .line 2761
    :goto_0
    return-void

    .line 2759
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cy;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/cy;->b:I

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 2751
    iget-boolean v0, p0, Landroid/support/v7/widget/cy;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/cy;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/cy;->b:I

    .line 2753
    return-void

    .line 2751
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cy;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/ba;

    invoke-virtual {v0}, Landroid/support/v7/widget/ba;->c()I

    move-result v0

    goto :goto_0
.end method
