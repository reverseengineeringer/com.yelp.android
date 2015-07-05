.class public Landroid/support/v7/widget/RecyclerView$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# instance fields
.field a:Landroid/support/v7/widget/ce;

.field final b:Landroid/graphics/Rect;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 7898
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 7886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 7899
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 7894
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 7895
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 1

    .prologue
    .line 7910
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 7911
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 7906
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 7907
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .prologue
    .line 7902
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 7886
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7887
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7891
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->d:Z

    .line 7903
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 7941
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 7952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->n()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 7969
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    return v0
.end method
