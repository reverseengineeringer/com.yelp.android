.class public abstract Landroid/support/v7/widget/ce;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/ce;

.field h:Landroid/support/v7/widget/ce;

.field i:Landroid/support/v7/widget/RecyclerView;

.field private j:I

.field private k:I

.field private l:Landroid/support/v7/widget/bv;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7475
    iput v2, p0, Landroid/support/v7/widget/ce;->b:I

    .line 7476
    iput v2, p0, Landroid/support/v7/widget/ce;->c:I

    .line 7477
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/ce;->d:J

    .line 7478
    iput v2, p0, Landroid/support/v7/widget/ce;->e:I

    .line 7479
    iput v2, p0, Landroid/support/v7/widget/ce;->f:I

    .line 7482
    iput-object v3, p0, Landroid/support/v7/widget/ce;->g:Landroid/support/v7/widget/ce;

    .line 7484
    iput-object v3, p0, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    .line 7555
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ce;->k:I

    .line 7559
    iput-object v3, p0, Landroid/support/v7/widget/ce;->l:Landroid/support/v7/widget/bv;

    .line 7568
    if-nez p1, :cond_0

    .line 7569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7571
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 7572
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/bv;)Landroid/support/v7/widget/bv;
    .locals 0

    .prologue
    .line 7473
    iput-object p1, p0, Landroid/support/v7/widget/ce;->l:Landroid/support/v7/widget/bv;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/ce;)Z
    .locals 1

    .prologue
    .line 7473
    invoke-direct {p0}, Landroid/support/v7/widget/ce;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/ce;)Z
    .locals 1

    .prologue
    .line 7473
    invoke-direct {p0}, Landroid/support/v7/widget/ce;->u()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/ce;)I
    .locals 1

    .prologue
    .line 7473
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    return v0
.end method

.method private u()Z
    .locals 1

    .prologue
    .line 7857
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 7865
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 7597
    iput v0, p0, Landroid/support/v7/widget/ce;->c:I

    .line 7598
    iput v0, p0, Landroid/support/v7/widget/ce;->f:I

    .line 7599
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 7776
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    .line 7777
    return-void
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 7772
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    .line 7773
    return-void
.end method

.method a(IIZ)V
    .locals 1

    .prologue
    .line 7575
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ce;->a(I)V

    .line 7576
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 7577
    iput p1, p0, Landroid/support/v7/widget/ce;->b:I

    .line 7578
    return-void
.end method

.method a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 7581
    iget v0, p0, Landroid/support/v7/widget/ce;->c:I

    if-ne v0, v1, :cond_0

    .line 7582
    iget v0, p0, Landroid/support/v7/widget/ce;->b:I

    iput v0, p0, Landroid/support/v7/widget/ce;->c:I

    .line 7584
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ce;->f:I

    if-ne v0, v1, :cond_1

    .line 7585
    iget v0, p0, Landroid/support/v7/widget/ce;->b:I

    iput v0, p0, Landroid/support/v7/widget/ce;->f:I

    .line 7587
    :cond_1
    if-eqz p2, :cond_2

    .line 7588
    iget v0, p0, Landroid/support/v7/widget/ce;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ce;->f:I

    .line 7590
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ce;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ce;->b:I

    .line 7591
    iget-object v0, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7592
    iget-object v0, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 7594
    :cond_3
    return-void
.end method

.method a(Landroid/support/v7/widget/bv;)V
    .locals 0

    .prologue
    .line 7736
    iput-object p1, p0, Landroid/support/v7/widget/ce;->l:Landroid/support/v7/widget/bv;

    .line 7737
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 7823
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/ce;->k:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/ce;->k:I

    .line 7824
    iget v0, p0, Landroid/support/v7/widget/ce;->k:I

    if-gez v0, :cond_2

    .line 7825
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ce;->k:I

    .line 7830
    const-string/jumbo v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7840
    :cond_0
    :goto_1
    return-void

    .line 7823
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ce;->k:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7832
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/ce;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 7833
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    goto :goto_1

    .line 7834
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ce;->k:I

    if-nez v0, :cond_0

    .line 7835
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    goto :goto_1
.end method

.method b()V
    .locals 2

    .prologue
    .line 7602
    iget v0, p0, Landroid/support/v7/widget/ce;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 7603
    iget v0, p0, Landroid/support/v7/widget/ce;->b:I

    iput v0, p0, Landroid/support/v7/widget/ce;->c:I

    .line 7605
    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 7608
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 7647
    iget v0, p0, Landroid/support/v7/widget/ce;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/ce;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ce;->f:I

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 7701
    iget-wide v0, p0, Landroid/support/v7/widget/ce;->d:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 7708
    iget v0, p0, Landroid/support/v7/widget/ce;->e:I

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 7712
    iget-object v0, p0, Landroid/support/v7/widget/ce;->l:Landroid/support/v7/widget/bv;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()V
    .locals 1

    .prologue
    .line 7716
    iget-object v0, p0, Landroid/support/v7/widget/ce;->l:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/bv;->d(Landroid/support/v7/widget/ce;)V

    .line 7717
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 7720
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 1

    .prologue
    .line 7724
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    .line 7725
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 7728
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/ce;->j:I

    .line 7729
    return-void
.end method

.method l()Z
    .locals 1

    .prologue
    .line 7740
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()Z
    .locals 1

    .prologue
    .line 7744
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 7748
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 7752
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method p()Z
    .locals 1

    .prologue
    .line 7756
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method q()Z
    .locals 1

    .prologue
    .line 7764
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 7768
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method s()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7780
    iput v3, p0, Landroid/support/v7/widget/ce;->j:I

    .line 7781
    iput v2, p0, Landroid/support/v7/widget/ce;->b:I

    .line 7782
    iput v2, p0, Landroid/support/v7/widget/ce;->c:I

    .line 7783
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/ce;->d:J

    .line 7784
    iput v2, p0, Landroid/support/v7/widget/ce;->f:I

    .line 7785
    iput v3, p0, Landroid/support/v7/widget/ce;->k:I

    .line 7786
    iput-object v4, p0, Landroid/support/v7/widget/ce;->g:Landroid/support/v7/widget/ce;

    .line 7787
    iput-object v4, p0, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    .line 7788
    return-void
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 7848
    iget v0, p0, Landroid/support/v7/widget/ce;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 7792
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewHolder{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ce;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/widget/ce;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ce;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ce;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7795
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7796
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7797
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->o()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7798
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7799
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7800
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7801
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7802
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7803
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->t()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/ce;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7804
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/ce;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7806
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string/jumbo v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7807
    :cond_a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7808
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
