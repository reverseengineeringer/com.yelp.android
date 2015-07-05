.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field e:Landroid/support/v7/widget/db;

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 1994
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1995
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 1990
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1991
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 2002
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2003
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 1998
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1999
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2038
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    if-nez v0, :cond_0

    .line 2039
    const/4 v0, -0x1

    .line 2041
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->e:Landroid/support/v7/widget/db;

    iget v0, v0, Landroid/support/v7/widget/db;->d:I

    goto :goto_0
.end method
