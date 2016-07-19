.class public Landroid/support/v7/widget/RecyclerView$r;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "r"
.end annotation


# instance fields
.field a:Lcom/yelp/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/a",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            "Landroid/support/v7/widget/RecyclerView$h;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/yelp/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/a",
            "<",
            "Landroid/support/v7/widget/RecyclerView$u;",
            "Landroid/support/v7/widget/RecyclerView$h;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/yelp/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/g/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$u;",
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

    .line 9375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9377
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:I

    .line 9378
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Lcom/yelp/android/g/a;

    .line 9380
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Lcom/yelp/android/g/a;

    .line 9383
    new-instance v0, Lcom/yelp/android/g/a;

    invoke-direct {v0}, Lcom/yelp/android/g/a;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Lcom/yelp/android/g/a;

    .line 9386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    .line 9393
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    .line 9398
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:I

    .line 9404
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    .line 9406
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    .line 9408
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    .line 9410
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->l:Z

    .line 9412
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->m:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 1

    .prologue
    .line 9375
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    return v0
.end method

.method private a(Lcom/yelp/android/g/a;Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/g/a",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView$u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9565
    invoke-virtual {p1}, Lcom/yelp/android/g/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 9566
    invoke-virtual {p1, v0}, Lcom/yelp/android/g/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 9567
    invoke-virtual {p1, v0}, Lcom/yelp/android/g/a;->d(I)Ljava/lang/Object;

    .line 9571
    :cond_0
    return-void

    .line 9565
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1

    .prologue
    .line 9375
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->m:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$r;Z)Z
    .locals 0

    .prologue
    .line 9375
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 0

    .prologue
    .line 9375
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1

    .prologue
    .line 9375
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->l:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$r;Z)Z
    .locals 0

    .prologue
    .line 9375
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 0

    .prologue
    .line 9375
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1

    .prologue
    .line 9375
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$r;Z)Z
    .locals 0

    .prologue
    .line 9375
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$r;->l:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$r;I)I
    .locals 0

    .prologue
    .line 9375
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:I

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$r;)Z
    .locals 1

    .prologue
    .line 9375
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$r;Z)Z
    .locals 0

    .prologue
    .line 9375
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$r;->m:Z

    return p1
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 2

    .prologue
    .line 9551
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Lcom/yelp/android/g/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9552
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Lcom/yelp/android/g/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/g/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9553
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Lcom/yelp/android/g/a;

    if-eqz v0, :cond_0

    .line 9554
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->c:Lcom/yelp/android/g/a;

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/RecyclerView$r;->a(Lcom/yelp/android/g/a;Landroid/support/v7/widget/RecyclerView$u;)V

    .line 9556
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9558
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9574
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9575
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 9425
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    return v0
.end method

.method b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9578
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9579
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$r;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9581
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 9436
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->m:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 9500
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:I

    return v0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 9509
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->f:I

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
    .line 9545
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->h:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->a:Lcom/yelp/android/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->b:Lcom/yelp/android/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$r;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$r;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$r;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
