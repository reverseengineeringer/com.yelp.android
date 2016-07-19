.class public abstract Landroid/support/v7/widget/RecyclerView$u;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "u"
.end annotation


# static fields
.field private static final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:I

.field c:I

.field d:J

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/RecyclerView$u;

.field h:Landroid/support/v7/widget/RecyclerView$u;

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroid/support/v7/widget/RecyclerView;

.field private l:I

.field private n:I

.field private o:Landroid/support/v7/widget/RecyclerView$n;

.field private p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8273
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$u;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 8295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8188
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 8189
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 8190
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:J

    .line 8191
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->e:I

    .line 8192
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    .line 8195
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Landroid/support/v7/widget/RecyclerView$u;

    .line 8197
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->h:Landroid/support/v7/widget/RecyclerView$u;

    .line 8275
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    .line 8276
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->j:Ljava/util/List;

    .line 8278
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    .line 8282
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$u;->o:Landroid/support/v7/widget/RecyclerView$n;

    .line 8286
    iput v4, p0, Landroid/support/v7/widget/RecyclerView$u;->p:I

    .line 8296
    if-nez p1, :cond_0

    .line 8297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8299
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    .line 8300
    return-void
.end method

.method private A()Z
    .locals 1

    .prologue
    .line 8652
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$u;Landroid/support/v7/widget/RecyclerView$n;)Landroid/support/v7/widget/RecyclerView$n;
    .locals 0

    .prologue
    .line 8186
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->o:Landroid/support/v7/widget/RecyclerView$n;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 8186
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->x()V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView$u;)V
    .locals 0

    .prologue
    .line 8186
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->y()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 8186
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->A()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView$u;)Z
    .locals 1

    .prologue
    .line 8186
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->z()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView$u;)I
    .locals 1

    .prologue
    .line 8186
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    return v0
.end method

.method private w()V
    .locals 1

    .prologue
    .line 8517
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    .line 8519
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->j:Ljava/util/List;

    .line 8521
    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 8562
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->p:I

    .line 8564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;I)V

    .line 8566
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 8572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$u;->p:I

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;I)V

    .line 8574
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->p:I

    .line 8575
    return-void
.end method

.method private z()Z
    .locals 1

    .prologue
    .line 8644
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit8 v0, v0, 0x10

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

    .line 8325
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 8326
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    .line 8327
    return-void
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 8500
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8501
    return-void
.end method

.method a(IIZ)V
    .locals 1

    .prologue
    .line 8303
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$u;->b(I)V

    .line 8304
    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/RecyclerView$u;->a(IZ)V

    .line 8305
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 8306
    return-void
.end method

.method a(IZ)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 8309
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    if-ne v0, v1, :cond_0

    .line 8310
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 8312
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    if-ne v0, v1, :cond_1

    .line 8313
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    .line 8315
    :cond_1
    if-eqz p2, :cond_2

    .line 8316
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    .line 8318
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 8319
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8320
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 8322
    :cond_3
    return-void
.end method

.method a(Landroid/support/v7/widget/RecyclerView$n;)V
    .locals 0

    .prologue
    .line 8464
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$u;->o:Landroid/support/v7/widget/RecyclerView$n;

    .line 8465
    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 8508
    if-nez p1, :cond_1

    .line 8509
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$u;->b(I)V

    .line 8514
    :cond_0
    :goto_0
    return-void

    .line 8510
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    .line 8511
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$u;->w()V

    .line 8512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 8610
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    .line 8611
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    if-gez v0, :cond_2

    .line 8612
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    .line 8617
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

    .line 8627
    :cond_0
    :goto_1
    return-void

    .line 8610
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8619
    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 8620
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    goto :goto_1

    .line 8621
    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    if-nez v0, :cond_0

    .line 8622
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    goto :goto_1
.end method

.method a(I)Z
    .locals 1

    .prologue
    .line 8488
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 8330
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 8331
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 8333
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 8504
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8505
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 8336
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8375
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 8429
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:J

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 8436
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->e:I

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 8440
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->o:Landroid/support/v7/widget/RecyclerView$n;

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
    .line 8444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->o:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$n;->d(Landroid/support/v7/widget/RecyclerView$u;)V

    .line 8445
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 8448
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8452
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8453
    return-void
.end method

.method k()V
    .locals 1

    .prologue
    .line 8456
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8457
    return-void
.end method

.method l()Z
    .locals 1

    .prologue
    .line 8468
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8472
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8476
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8480
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8484
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8492
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

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
    .line 8496
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->l()Z

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
    .locals 1

    .prologue
    .line 8524
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 8525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8527
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8528
    return-void
.end method

.method t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8531
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    .line 8532
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 8534
    :cond_0
    sget-object v0, Landroid/support/v7/widget/RecyclerView$u;->m:Ljava/util/List;

    .line 8540
    :goto_0
    return-object v0

    .line 8537
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->j:Ljava/util/List;

    goto :goto_0

    .line 8540
    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView$u;->m:Ljava/util/List;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 8579
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

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$u;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", pLpos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8582
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " scrap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8583
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8584
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->o()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, " unbound"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8585
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->m()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, " update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8586
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->p()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8587
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, " ignored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8588
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->n()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, " changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8589
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, " tmpDetached"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8590
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->v()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " not recyclable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8591
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->r()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string/jumbo v1, "undefined adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8593
    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a

    const-string/jumbo v1, " no parent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8594
    :cond_a
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 8545
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    .line 8546
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->b:I

    .line 8547
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->c:I

    .line 8548
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$u;->d:J

    .line 8549
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$u;->f:I

    .line 8550
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->n:I

    .line 8551
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->g:Landroid/support/v7/widget/RecyclerView$u;

    .line 8552
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$u;->h:Landroid/support/v7/widget/RecyclerView$u;

    .line 8553
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$u;->s()V

    .line 8554
    iput v3, p0, Landroid/support/v7/widget/RecyclerView$u;->p:I

    .line 8555
    return-void
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 8635
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$u;->l:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
