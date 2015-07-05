.class public Landroid/support/v7/widget/ca;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:I


# direct methods
.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8309
    iget-object v0, p0, Landroid/support/v7/widget/ca;->d:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ca;->c:I

    if-ge v0, v1, :cond_0

    .line 8310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8312
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ca;->c:I

    if-ge v0, v1, :cond_1

    .line 8313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8315
    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 8284
    iget-boolean v0, p0, Landroid/support/v7/widget/ca;->e:Z

    if-eqz v0, :cond_3

    .line 8285
    invoke-direct {p0}, Landroid/support/v7/widget/ca;->a()V

    .line 8286
    iget-object v0, p0, Landroid/support/v7/widget/ca;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 8287
    iget v0, p0, Landroid/support/v7/widget/ca;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 8288
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cd;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ca;->a:I

    iget v2, p0, Landroid/support/v7/widget/ca;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cd;->b(II)V

    .line 8295
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/ca;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/ca;->f:I

    .line 8296
    iget v0, p0, Landroid/support/v7/widget/ca;->f:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 8299
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8302
    :cond_0
    iput-boolean v5, p0, Landroid/support/v7/widget/ca;->e:Z

    .line 8306
    :goto_1
    return-void

    .line 8290
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cd;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ca;->a:I

    iget v2, p0, Landroid/support/v7/widget/ca;->b:I

    iget v3, p0, Landroid/support/v7/widget/ca;->c:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/cd;->a(III)V

    goto :goto_0

    .line 8293
    :cond_2
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cd;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/ca;->a:I

    iget v2, p0, Landroid/support/v7/widget/ca;->b:I

    iget v3, p0, Landroid/support/v7/widget/ca;->c:I

    iget-object v4, p0, Landroid/support/v7/widget/ca;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/cd;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 8304
    :cond_3
    iput v5, p0, Landroid/support/v7/widget/ca;->f:I

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/ca;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 8235
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ca;->a(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method
