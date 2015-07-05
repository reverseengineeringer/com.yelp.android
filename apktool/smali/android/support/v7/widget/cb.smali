.class public Landroid/support/v7/widget/cb;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:Lcom/yelp/android/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/a",
            "<",
            "Landroid/support/v7/widget/ce;",
            "Landroid/support/v7/widget/bq;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/yelp/android/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/a",
            "<",
            "Landroid/support/v7/widget/ce;",
            "Landroid/support/v7/widget/bq;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/yelp/android/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/e/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/ce;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field private f:I

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8483
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/cb;->f:I

    .line 8484
    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    .line 8486
    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    .line 8489
    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    .line 8492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    .line 8499
    iput v1, p0, Landroid/support/v7/widget/cb;->e:I

    .line 8504
    iput v1, p0, Landroid/support/v7/widget/cb;->h:I

    .line 8510
    iput v1, p0, Landroid/support/v7/widget/cb;->i:I

    .line 8512
    iput-boolean v1, p0, Landroid/support/v7/widget/cb;->j:Z

    .line 8514
    iput-boolean v1, p0, Landroid/support/v7/widget/cb;->k:Z

    .line 8516
    iput-boolean v1, p0, Landroid/support/v7/widget/cb;->l:Z

    .line 8518
    iput-boolean v1, p0, Landroid/support/v7/widget/cb;->m:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/cb;I)I
    .locals 1

    .prologue
    .line 8481
    iget v0, p0, Landroid/support/v7/widget/cb;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/cb;->i:I

    return v0
.end method

.method private a(Lcom/yelp/android/e/a;Landroid/support/v7/widget/ce;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/e/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/ce;",
            ">;",
            "Landroid/support/v7/widget/ce;",
            ")V"
        }
    .end annotation

    .prologue
    .line 8671
    invoke-virtual {p1}, Lcom/yelp/android/e/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 8672
    invoke-virtual {p1, v0}, Lcom/yelp/android/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 8673
    invoke-virtual {p1, v0}, Lcom/yelp/android/e/a;->d(I)Ljava/lang/Object;

    .line 8677
    :cond_0
    return-void

    .line 8671
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/cb;)Z
    .locals 1

    .prologue
    .line 8481
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->m:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/cb;Z)Z
    .locals 0

    .prologue
    .line 8481
    iput-boolean p1, p0, Landroid/support/v7/widget/cb;->j:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/cb;I)I
    .locals 0

    .prologue
    .line 8481
    iput p1, p0, Landroid/support/v7/widget/cb;->i:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/cb;)Z
    .locals 1

    .prologue
    .line 8481
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->l:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/cb;Z)Z
    .locals 0

    .prologue
    .line 8481
    iput-boolean p1, p0, Landroid/support/v7/widget/cb;->k:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/cb;I)I
    .locals 0

    .prologue
    .line 8481
    iput p1, p0, Landroid/support/v7/widget/cb;->h:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/cb;)Z
    .locals 1

    .prologue
    .line 8481
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->j:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/cb;Z)Z
    .locals 0

    .prologue
    .line 8481
    iput-boolean p1, p0, Landroid/support/v7/widget/cb;->l:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/cb;I)I
    .locals 0

    .prologue
    .line 8481
    iput p1, p0, Landroid/support/v7/widget/cb;->f:I

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/cb;)Z
    .locals 1

    .prologue
    .line 8481
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->k:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/cb;Z)Z
    .locals 0

    .prologue
    .line 8481
    iput-boolean p1, p0, Landroid/support/v7/widget/cb;->m:Z

    return p1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/ce;)V
    .locals 2

    .prologue
    .line 8657
    iget-object v0, p0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8658
    iget-object v0, p0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8659
    iget-object v0, p0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    if-eqz v0, :cond_0

    .line 8660
    iget-object v0, p0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/cb;->a(Lcom/yelp/android/e/a;Landroid/support/v7/widget/ce;)V

    .line 8662
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8664
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8680
    iget-object v0, p0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8681
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 8531
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->k:Z

    return v0
.end method

.method b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 8684
    iget-object v0, p0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8685
    iget-object v0, p0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8687
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 8542
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->m:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 8606
    iget v0, p0, Landroid/support/v7/widget/cb;->f:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 8615
    iget v0, p0, Landroid/support/v7/widget/cb;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 8651
    iget-boolean v0, p0, Landroid/support/v7/widget/cb;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/cb;->h:I

    iget v1, p0, Landroid/support/v7/widget/cb;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/cb;->e:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 8691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/cb;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/cb;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/cb;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/cb;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/cb;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cb;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cb;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cb;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/cb;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
