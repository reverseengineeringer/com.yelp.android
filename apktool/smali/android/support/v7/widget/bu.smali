.class public Landroid/support/v7/widget/bu;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseIntArray;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3712
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/util/SparseArray;

    .line 3714
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bu;->b:Landroid/util/SparseIntArray;

    .line 3715
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bu;->c:I

    return-void
.end method

.method private b(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3799
    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3800
    if-nez v0, :cond_0

    .line 3801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3802
    iget-object v1, p0, Landroid/support/v7/widget/bu;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3803
    iget-object v1, p0, Landroid/support/v7/widget/bu;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3804
    iget-object v1, p0, Landroid/support/v7/widget/bu;->b:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3807
    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Landroid/support/v7/widget/ce;
    .locals 3

    .prologue
    .line 3734
    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3735
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3736
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 3737
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ce;

    .line 3738
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3741
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Landroid/support/v7/widget/bu;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3721
    return-void
.end method

.method a(Landroid/support/v7/widget/bi;)V
    .locals 1

    .prologue
    .line 3766
    iget v0, p0, Landroid/support/v7/widget/bu;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/bu;->c:I

    .line 3767
    return-void
.end method

.method a(Landroid/support/v7/widget/bi;Landroid/support/v7/widget/bi;Z)V
    .locals 1

    .prologue
    .line 3787
    if-eqz p1, :cond_0

    .line 3788
    invoke-virtual {p0}, Landroid/support/v7/widget/bu;->b()V

    .line 3790
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bu;->c:I

    if-nez v0, :cond_1

    .line 3791
    invoke-virtual {p0}, Landroid/support/v7/widget/bu;->a()V

    .line 3793
    :cond_1
    if-eqz p2, :cond_2

    .line 3794
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/bu;->a(Landroid/support/v7/widget/bi;)V

    .line 3796
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/widget/ce;)V
    .locals 3

    .prologue
    .line 3756
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->f()I

    move-result v0

    .line 3757
    invoke-direct {p0, v0}, Landroid/support/v7/widget/bu;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 3758
    iget-object v2, p0, Landroid/support/v7/widget/bu;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 3763
    :goto_0
    return-void

    .line 3761
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->s()V

    .line 3762
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    .line 3770
    iget v0, p0, Landroid/support/v7/widget/bu;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bu;->c:I

    .line 3771
    return-void
.end method
