.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/by;


# static fields
.field private static final ae:Landroid/view/animation/Interpolator;

.field private static final h:Z


# instance fields
.field private final A:Z

.field private final B:Landroid/view/accessibility/AccessibilityManager;

.field private C:Z

.field private D:I

.field private E:Landroid/support/v4/widget/aa;

.field private F:Landroid/support/v4/widget/aa;

.field private G:Landroid/support/v4/widget/aa;

.field private H:Landroid/support/v4/widget/aa;

.field private I:I

.field private J:I

.field private K:Landroid/view/VelocityTracker;

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private final Q:I

.field private final R:I

.field private S:F

.field private final T:Landroid/support/v7/widget/cd;

.field private U:Landroid/support/v7/widget/bt;

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/bt;",
            ">;"
        }
    .end annotation
.end field

.field private W:Landroid/support/v7/widget/bn;

.field final a:Landroid/support/v7/widget/bv;

.field private aa:Z

.field private ab:Landroid/support/v7/widget/cf;

.field private final ac:[I

.field private ad:Ljava/lang/Runnable;

.field b:Landroid/support/v7/widget/o;

.field c:Landroid/support/v7/widget/r;

.field d:Landroid/support/v7/widget/bl;

.field final e:Landroid/support/v7/widget/cb;

.field f:Z

.field g:Z

.field private final i:Landroid/support/v7/widget/bx;

.field private j:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private k:Z

.field private final l:Ljava/lang/Runnable;

.field private final m:Landroid/graphics/Rect;

.field private n:Landroid/support/v7/widget/bi;

.field private o:Landroid/support/v7/widget/br;

.field private p:Landroid/support/v7/widget/bw;

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/bp;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/bs;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/support/v7/widget/bs;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    .line 375
    new-instance v0, Landroid/support/v7/widget/bf;

    invoke-direct {v0}, Landroid/support/v7/widget/bf;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 388
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 224
    new-instance v0, Landroid/support/v7/widget/bx;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/bx;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bd;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/bx;

    .line 226
    new-instance v0, Landroid/support/v7/widget/bv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bv;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    .line 246
    new-instance v0, Landroid/support/v7/widget/bd;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/bd;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/lang/Runnable;

    .line 271
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    .line 294
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 304
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 308
    new-instance v0, Landroid/support/v7/widget/u;

    invoke-direct {v0}, Landroid/support/v7/widget/u;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    .line 333
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 334
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 344
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:F

    .line 346
    new-instance v0, Landroid/support/v7/widget/cd;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cd;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/cd;

    .line 348
    new-instance v0, Landroid/support/v7/widget/cb;

    invoke-direct {v0}, Landroid/support/v7/widget/cb;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    .line 354
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 355
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    .line 356
    new-instance v0, Landroid/support/v7/widget/bo;

    invoke-direct {v0, p0, v3}, Landroid/support/v7/widget/bo;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bd;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/bn;

    .line 358
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    .line 363
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:[I

    .line 365
    new-instance v0, Landroid/support/v7/widget/be;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/be;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/lang/Runnable;

    .line 392
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 394
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->A:Z

    .line 396
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 398
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    .line 399
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    .line 400
    invoke-static {p0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/bn;)V

    .line 403
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 404
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 406
    invoke-static {p0}, Landroid/support/v4/view/ce;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 408
    invoke-static {p0, v1}, Landroid/support/v4/view/ce;->c(Landroid/view/View;I)V

    .line 411
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    .line 413
    new-instance v0, Landroid/support/v7/widget/cf;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/cf;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/cf;)V

    .line 414
    return-void

    :cond_2
    move v0, v2

    .line 394
    goto :goto_0
.end method

.method private A()Z
    .locals 1

    .prologue
    .line 2230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0}, Landroid/support/v7/widget/bl;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 1

    .prologue
    .line 2238
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2240
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    .line 2242
    :cond_0
    return-void
.end method

.method private C()Z
    .locals 1

    .prologue
    .line 2245
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2255
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()V

    .line 2259
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 2260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 2265
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2266
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->b()V

    .line 2270
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    move v0, v2

    .line 2272
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-static {v3}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v3}, Landroid/support/v7/widget/bi;->b()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v7/widget/cb;->c(Landroid/support/v7/widget/cb;Z)Z

    .line 2276
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v4}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->C()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    invoke-static {v3, v2}, Landroid/support/v7/widget/cb;->d(Landroid/support/v7/widget/cb;Z)Z

    .line 2279
    return-void

    .line 2268
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->e()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2270
    goto :goto_1

    :cond_7
    move v3, v1

    .line 2272
    goto :goto_2

    :cond_8
    move v2, v1

    .line 2276
    goto :goto_3
.end method

.method private E()V
    .locals 4

    .prologue
    .line 3002
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-eqz v0, :cond_0

    .line 3014
    :goto_0
    return-void

    .line 3005
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 3006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    .line 3007
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 3008
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 3009
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3010
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ce;->a(I)V

    .line 3007
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3013
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->g()V

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1480
    .line 1481
    if-gez p2, :cond_5

    .line 1482
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    neg-int v3, p2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, v7, v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/aa;->a(FF)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1491
    :goto_0
    if-gez p4, :cond_7

    .line 1492
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1493
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    neg-int v4, p4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/aa;->a(FF)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    .line 1501
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-nez p2, :cond_2

    if-eqz p4, :cond_3

    .line 1502
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 1504
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1483
    goto :goto_0

    .line 1485
    :cond_5
    if-lez p2, :cond_a

    .line 1486
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1487
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    int-to-float v3, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, p3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/aa;->a(FF)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0

    .line 1495
    :cond_7
    if-lez p4, :cond_9

    .line 1496
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1497
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    int-to-float v4, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v5, v7, v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/aa;->a(FF)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v0, :cond_1

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v0

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/bi;ZZ)V
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/bx;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bi;->b(Landroid/support/v7/widget/bk;)V

    .line 701
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/bi;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 703
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 705
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0}, Landroid/support/v7/widget/bl;->c()V

    .line 712
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_3

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/bv;)V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/bv;)V

    .line 717
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->a()V

    .line 719
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->a()V

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    .line 721
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    .line 722
    if-eqz p1, :cond_5

    .line 723
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/bx;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/bi;->a(Landroid/support/v7/widget/bk;)V

    .line 724
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/bi;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 726
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v1, :cond_6

    .line 727
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/bi;Landroid/support/v7/widget/bi;)V

    .line 729
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bi;Landroid/support/v7/widget/bi;Z)V

    .line 730
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 731
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->o()V

    .line 732
    return-void
.end method

.method private a(Landroid/support/v7/widget/bq;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2648
    iget-object v0, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2649
    iget-object v1, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ce;)V

    .line 2650
    iget v2, p1, Landroid/support/v7/widget/bq;->b:I

    .line 2651
    iget v3, p1, Landroid/support/v7/widget/bq;->c:I

    .line 2652
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2653
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2654
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2655
    :cond_0
    iget-object v1, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2656
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    .line 2663
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget-object v1, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/ce;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2665
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 2677
    :cond_1
    :goto_0
    return-void

    .line 2672
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2673
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget-object v1, p1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/ce;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2674
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ce;Landroid/graphics/Rect;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2623
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2624
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    .line 2627
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/ce;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2634
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 2645
    :cond_1
    :goto_0
    return-void

    .line 2640
    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2641
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bl;->b(Landroid/support/v7/widget/ce;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2642
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2680
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2681
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/ce;)V

    .line 2682
    iput-object p2, p1, Landroid/support/v7/widget/ce;->g:Landroid/support/v7/widget/ce;

    .line 2683
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bv;->d(Landroid/support/v7/widget/ce;)V

    .line 2687
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2688
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2690
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v6, v4

    move v5, v3

    .line 2699
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2701
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 2703
    :cond_1
    return-void

    .line 2694
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2695
    iget-object v0, p2, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2696
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2697
    iput-object p1, p2, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/e/a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/e/a",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2598
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v7, v0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    .line 2599
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_3

    .line 2600
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    .line 2601
    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 2602
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bq;

    .line 2603
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v2}, Landroid/support/v7/widget/cb;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2604
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v2, v1}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    :cond_0
    invoke-virtual {p1, v5}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/widget/br;->a(Landroid/view/View;Landroid/support/v7/widget/bv;)V

    .line 2599
    :goto_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 2610
    :cond_1
    if-eqz v0, :cond_2

    .line 2611
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bq;)V

    goto :goto_1

    .line 2614
    :cond_2
    new-instance v0, Landroid/support/v7/widget/bq;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/ce;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bq;)V

    goto :goto_1

    .line 2618
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 2619
    return-void
.end method

.method private a([I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 2527
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v5

    .line 2528
    if-nez v5, :cond_0

    .line 2529
    aput v4, p1, v4

    .line 2530
    aput v4, p1, v7

    .line 2550
    :goto_0
    return-void

    .line 2533
    :cond_0
    const v2, 0x7fffffff

    .line 2534
    const/high16 v0, -0x80000000

    move v3, v4

    .line 2535
    :goto_1
    if-ge v3, v5, :cond_3

    .line 2536
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 2537
    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->c()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    .line 2535
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 2540
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->d()I

    move-result v1

    .line 2541
    if-ge v1, v2, :cond_2

    move v2, v1

    .line 2544
    :cond_2
    if-le v1, v0, :cond_4

    move v0, v1

    move v1, v2

    .line 2545
    goto :goto_2

    .line 2548
    :cond_3
    aput v2, p1, v4

    .line 2549
    aput v0, p1, v7

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    return p1
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    .line 1765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 1766
    if-eq v3, v6, :cond_0

    if-nez v3, :cond_1

    .line 1767
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    .line 1770
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    .line 1771
    :goto_0
    if-ge v2, v4, :cond_3

    .line 1772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bs;

    .line 1773
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/bs;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v3, v6, :cond_2

    .line 1774
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    .line 1775
    const/4 v0, 0x1

    .line 1778
    :goto_1
    return v0

    .line 1771
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1778
    goto :goto_1
.end method

.method static b(Landroid/view/View;)Landroid/support/v7/widget/ce;
    .locals 1

    .prologue
    .line 3064
    if-nez p0, :cond_0

    .line 3065
    const/4 v0, 0x0

    .line 3067
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->a:Landroid/support/v7/widget/ce;

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->j(II)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/support/v7/widget/ce;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 863
    iget-object v2, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 864
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    move v0, v1

    .line 865
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/bv;->d(Landroid/support/v7/widget/ce;)V

    .line 866
    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->q()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 868
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    const/4 v3, -0x1

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 874
    :goto_1
    return-void

    .line 864
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_1
    if-nez v0, :cond_2

    .line 870
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/r;->a(Landroid/view/View;Z)V

    goto :goto_1

    .line 872
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/r;->d(Landroid/view/View;)V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    return v0
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1783
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    if-eqz v3, :cond_0

    .line 1784
    if-nez v0, :cond_1

    .line 1786
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    .line 1799
    :cond_0
    if-eqz v0, :cond_5

    .line 1800
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 1801
    :goto_0
    if-ge v3, v4, :cond_5

    .line 1802
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bs;

    .line 1803
    invoke-interface {v0, p0, p1}, Landroid/support/v7/widget/bs;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1804
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    move v0, v1

    .line 1809
    :goto_1
    return v0

    .line 1788
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/bs;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 1789
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    .line 1791
    :cond_2
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->s:Landroid/support/v7/widget/bs;

    :cond_3
    move v0, v1

    .line 1793
    goto :goto_1

    .line 1801
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1809
    goto :goto_1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 1994
    invoke-static {p1}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1995
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    if-ne v1, v2, :cond_0

    .line 1997
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1998
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1999
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->c(Landroid/view/MotionEvent;I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 2000
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 2002
    :cond_0
    return-void

    .line 1997
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    return-void
.end method

.method private g(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 883
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->e(Landroid/view/View;)Z

    move-result v0

    .line 885
    if-eqz v0, :cond_0

    .line 886
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 887
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/bv;->d(Landroid/support/v7/widget/ce;)V

    .line 888
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/bv;->b(Landroid/support/v7/widget/ce;)V

    .line 893
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 894
    return v0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2038
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2039
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2040
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2042
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->S:F

    .line 2049
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->S:F

    :goto_0
    return v0

    .line 2045
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5169
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    .line 5170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bi;->d(Landroid/support/v7/widget/ce;)V

    .line 5172
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/view/View;)V

    .line 5173
    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    return v0
.end method

.method private i(II)V
    .locals 2

    .prologue
    .line 1518
    const/4 v0, 0x0

    .line 1519
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->a()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1520
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->c()Z

    move-result v0

    .line 1522
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->a()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1523
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1525
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->a()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1526
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1528
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->a()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1529
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1531
    :cond_3
    if-eqz v0, :cond_4

    .line 1532
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 1534
    :cond_4
    return-void
.end method

.method static synthetic i(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    .line 5177
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bi;->c(Landroid/support/v7/widget/ce;)V

    .line 5179
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)V

    .line 5180
    return-void
.end method

.method static synthetic j(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method private j(II)V
    .locals 4

    .prologue
    .line 2091
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2092
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 2093
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 2094
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2099
    sparse-switch v2, :sswitch_data_0

    .line 2106
    invoke-static {p0}, Landroid/support/v4/view/ce;->o(Landroid/view/View;)I

    move-result v1

    .line 2110
    :sswitch_0
    sparse-switch v3, :sswitch_data_1

    .line 2117
    invoke-static {p0}, Landroid/support/v4/view/ce;->p(Landroid/view/View;)I

    move-result v0

    .line 2121
    :sswitch_1
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2122
    return-void

    .line 2099
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    .line 2110
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method private k(II)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2553
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2}, Landroid/support/v7/widget/r;->b()I

    move-result v3

    .line 2554
    if-nez v3, :cond_2

    .line 2555
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v0, v1

    .line 2567
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 2557
    :goto_1
    if-ge v2, v3, :cond_1

    .line 2558
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v4

    .line 2559
    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2557
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2562
    :cond_4
    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->d()I

    move-result v4

    .line 2563
    if-lt v4, p1, :cond_5

    if-le v4, p2, :cond_3

    :cond_5
    move v0, v1

    .line 2564
    goto :goto_0
.end method

.method static synthetic k(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->E()V

    return-void
.end method

.method static synthetic m(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cf;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/cf;

    return-object v0
.end method

.method static synthetic o(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bw;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bw;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/cd;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/cd;

    return-object v0
.end method

.method static synthetic q()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->ae:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic r()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->h:Z

    return v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Landroid/support/v7/widget/r;

    new-instance v1, Landroid/support/v7/widget/bg;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bg;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/t;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    .line 516
    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ne p1, v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 975
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    .line 976
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 977
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 979
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->d(I)V

    goto :goto_0
.end method

.method private t()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1173
    return-void
.end method

.method private u()V
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/cd;

    invoke-virtual {v0}, Landroid/support/v7/widget/cd;->b()V

    .line 1471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    .line 1472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->y()V

    .line 1474
    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1507
    const/4 v0, 0x0

    .line 1508
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->c()Z

    move-result v0

    .line 1509
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1510
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1511
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v1}, Landroid/support/v4/widget/aa;->c()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1512
    :cond_3
    if-eqz v0, :cond_4

    .line 1513
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 1515
    :cond_4
    return-void
.end method

.method private w()V
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1989
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    .line 1990
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1991
    return-void
.end method

.method private x()V
    .locals 1

    .prologue
    .line 2155
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 2156
    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 2159
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 2160
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2165
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 2166
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->z()V

    .line 2168
    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 2171
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 2172
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 2173
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2174
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2175
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2176
    invoke-static {v1, v0}, Lcom/yelp/android/f/a;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2177
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2179
    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/ce;)J
    .locals 2

    .prologue
    .line 2590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/ce;->e()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/ce;->b:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method a(IZ)Landroid/support/v7/widget/ce;
    .locals 4

    .prologue
    .line 3176
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    .line 3177
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 3178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 3179
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->p()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3180
    if-eqz p2, :cond_1

    .line 3181
    iget v3, v0, Landroid/support/v7/widget/ce;->b:I

    if-ne v3, p1, :cond_2

    .line 3192
    :cond_0
    :goto_1
    return-object v0

    .line 3184
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3177
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3192
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/view/View;)Landroid/support/v7/widget/ce;
    .locals 3

    .prologue
    .line 3055
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3056
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3057
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a direct child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3060
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    .line 519
    new-instance v0, Landroid/support/v7/widget/o;

    new-instance v1, Landroid/support/v7/widget/bh;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/bh;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/o;-><init>(Landroid/support/v7/widget/p;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    .line 596
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 3249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    .line 3250
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3251
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3253
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1405
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v1, :cond_1

    .line 1406
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v1}, Landroid/support/v7/widget/br;->d()Z

    move-result v1

    if-nez v1, :cond_2

    move p1, v0

    .line 1413
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v1}, Landroid/support/v7/widget/br;->e()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1416
    :goto_1
    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    .line 1417
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/cd;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/widget/cd;->b(II)V

    goto :goto_0

    :cond_4
    move v0, p2

    goto :goto_1
.end method

.method a(IIZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2911
    add-int v1, p1, p2

    .line 2912
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    .line 2913
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 2914
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v3

    .line 2915
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2916
    iget v4, v3, Landroid/support/v7/widget/ce;->b:I

    if-lt v4, v1, :cond_1

    .line 2922
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 2923
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v3, v6}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 2913
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2924
    :cond_1
    iget v4, v3, Landroid/support/v7/widget/ce;->b:I

    if-lt v4, p1, :cond_0

    .line 2929
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v3, v4, v5, p3}, Landroid/support/v7/widget/ce;->a(IIZ)V

    .line 2931
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v3, v6}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    goto :goto_1

    .line 2935
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/bv;->b(IIZ)V

    .line 2936
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2937
    return-void
.end method

.method public a(Landroid/support/v7/widget/bt;)V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    .line 1077
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1727
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1728
    if-nez p1, :cond_0

    .line 1729
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1388
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    .line 1389
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 1393
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1394
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1396
    :cond_1
    return-void
.end method

.method a(IIZII)Z
    .locals 14

    .prologue
    .line 1192
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1193
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->t()V

    .line 1195
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v6, :cond_6

    .line 1196
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1197
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 1198
    const-string/jumbo v6, "RV Scroll"

    invoke-static {v6}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 1199
    if-eqz p1, :cond_0

    .line 1200
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v4, p1, v5, v6}, Landroid/support/v7/widget/br;->a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v4

    .line 1201
    sub-int v5, p1, v4

    .line 1203
    :cond_0
    if-eqz p2, :cond_1

    .line 1204
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    move/from16 v0, p2

    invoke-virtual {v2, v0, v3, v6}, Landroid/support/v7/widget/br;->b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v2

    .line 1205
    sub-int v3, p2, v2

    .line 1207
    :cond_1
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    .line 1208
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1210
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v6}, Landroid/support/v7/widget/r;->b()I

    move-result v8

    .line 1211
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_5

    .line 1212
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v9

    .line 1213
    invoke-virtual {p0, v9}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v6

    .line 1214
    if-eqz v6, :cond_3

    iget-object v10, v6, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    if-eqz v10, :cond_3

    .line 1215
    iget-object v6, v6, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    .line 1216
    if-eqz v6, :cond_4

    iget-object v6, v6, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 1217
    :goto_1
    if-eqz v6, :cond_3

    .line 1218
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1219
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1220
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ne v10, v11, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    if-eq v9, v11, :cond_3

    .line 1221
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v11, v10

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v12, v9

    invoke-virtual {v6, v10, v9, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1211
    :cond_3
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 1216
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1229
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 1230
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_6
    move v13, v4

    move v4, v3

    move v3, v13

    .line 1232
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 1233
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1235
    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_9

    .line 1236
    if-eqz p3, :cond_8

    .line 1237
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {p0, v0, v5, v1, v4}, Landroid/support/v7/widget/RecyclerView;->a(IIII)V

    .line 1239
    :cond_8
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->i(II)V

    .line 1241
    :cond_9
    if-nez v3, :cond_a

    if-eqz v2, :cond_b

    .line 1242
    :cond_a
    invoke-virtual {p0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    .line 1244
    :cond_b
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1245
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1247
    :cond_c
    if-nez v3, :cond_d

    if-eqz v2, :cond_e

    :cond_d
    const/4 v2, 0x1

    :goto_2
    return v2

    :cond_e
    const/4 v2, 0x0

    goto :goto_2
.end method

.method a(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2194
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2196
    if-eqz p1, :cond_2

    .line 2197
    invoke-static {p1}, Lcom/yelp/android/f/a;->b(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v1

    .line 2199
    :goto_0
    if-nez v1, :cond_1

    .line 2202
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->y:I

    .line 2203
    const/4 v0, 0x1

    .line 2205
    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1668
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1669
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1671
    :cond_1
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 1381
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    .line 1383
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    .line 1385
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 3287
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    .line 3288
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3289
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3291
    :cond_0
    return-void
.end method

.method public b(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1435
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v1, :cond_1

    .line 1436
    const-string/jumbo v1, "RecyclerView"

    const-string/jumbo v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    :goto_0
    return v0

    .line 1440
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v1}, Landroid/support/v7/widget/br;->d()Z

    move-result v1

    .line 1441
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v2}, Landroid/support/v7/widget/br;->e()Z

    move-result v2

    .line 1442
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-ge v1, v3, :cond_3

    :cond_2
    move p1, v0

    .line 1445
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->Q:I

    if-ge v1, v2, :cond_5

    :cond_4
    move p2, v0

    .line 1448
    :cond_5
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    neg-int v1, v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1449
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    neg-int v2, v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1450
    if-nez v1, :cond_6

    if-eqz v2, :cond_0

    .line 1451
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->T:Landroid/support/v7/widget/cd;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/cd;->a(II)V

    .line 1452
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 3101
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 3102
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->d()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 1462
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1463
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->u()V

    .line 1464
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 3372
    return-void
.end method

.method c(II)V
    .locals 2

    .prologue
    .line 1537
    if-gez p1, :cond_4

    .line 1538
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 1539
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/aa;->a(I)Z

    .line 1545
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1546
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 1547
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/aa;->a(I)Z

    .line 1553
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1554
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 1556
    :cond_3
    return-void

    .line 1540
    :cond_4
    if-lez p1, :cond_0

    .line 1541
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 1542
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/aa;->a(I)Z

    goto :goto_0

    .line 1548
    :cond_5
    if-lez p2, :cond_1

    .line 1549
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 1550
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/aa;->a(I)Z

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2806
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->d(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1313
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->f(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->e(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->g(Landroid/support/v7/widget/cb;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 4

    .prologue
    .line 1559
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1562
    :cond_0
    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    .line 1563
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_1

    .line 1564
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0

    .line 1567
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0
.end method

.method d(I)V
    .locals 2

    .prologue
    .line 3377
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    .line 3378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/br;->h(I)V

    .line 3383
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(I)V

    .line 3386
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/bt;

    if-eqz v0, :cond_1

    .line 3387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/bt;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3389
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 3390
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 3391
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bt;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3390
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3394
    :cond_2
    return-void
.end method

.method d(II)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 2859
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v6

    .line 2861
    if-ge p1, p2, :cond_1

    .line 2864
    const/4 v0, -0x1

    move v2, p2

    move v3, p1

    :goto_0
    move v4, v5

    .line 2871
    :goto_1
    if-ge v4, v6, :cond_4

    .line 2872
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v7

    .line 2873
    if-eqz v7, :cond_0

    iget v8, v7, Landroid/support/v7/widget/ce;->b:I

    if-lt v8, v3, :cond_0

    iget v8, v7, Landroid/support/v7/widget/ce;->b:I

    if-le v8, v2, :cond_2

    .line 2871
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, p1

    move v3, p2

    .line 2868
    goto :goto_0

    .line 2880
    :cond_2
    iget v8, v7, Landroid/support/v7/widget/ce;->b:I

    if-ne v8, p1, :cond_3

    .line 2881
    sub-int v8, p2, p1

    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 2886
    :goto_3
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v7, v1}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    goto :goto_2

    .line 2883
    :cond_3
    invoke-virtual {v7, v0, v5}, Landroid/support/v7/widget/ce;->a(IZ)V

    goto :goto_3

    .line 2888
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bv;->a(II)V

    .line 2889
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2890
    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3266
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 852
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 844
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2735
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 2738
    :goto_0
    if-ge v3, v4, :cond_0

    .line 2739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bp;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, p1, p0, v5}, Landroid/support/v7/widget/bp;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/cb;)V

    .line 2738
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 2744
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {v0}, Landroid/support/v4/widget/aa;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2746
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    .line 2747
    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2748
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2749
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    .line 2750
    :goto_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2752
    :goto_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {v3}, Landroid/support/v4/widget/aa;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2753
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2754
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v3, :cond_1

    .line 2755
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2757
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v2

    :goto_4
    or-int/2addr v0, v3

    .line 2758
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2760
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v3}, Landroid/support/v4/widget/aa;->a()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2761
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2762
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 2763
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 2764
    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2765
    neg-int v3, v3

    int-to-float v3, v3

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2766
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v2

    :goto_6
    or-int/2addr v0, v3

    .line 2767
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2769
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v3}, Landroid/support/v4/widget/aa;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2770
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 2771
    const/high16 v4, 0x43340000    # 180.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2772
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v4, :cond_c

    .line 2773
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2777
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/aa;->a(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    or-int/2addr v0, v1

    .line 2778
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2784
    :cond_5
    if-nez v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v1}, Landroid/support/v7/widget/bl;->b()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2789
    :goto_8
    if-eqz v2, :cond_6

    .line 2790
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 2792
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 2746
    goto/16 :goto_1

    :cond_8
    move v0, v1

    .line 2749
    goto/16 :goto_2

    :cond_9
    move v3, v1

    .line 2757
    goto/16 :goto_4

    :cond_a
    move v3, v1

    .line 2763
    goto/16 :goto_5

    :cond_b
    move v3, v1

    .line 2766
    goto :goto_6

    .line 2775
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    :cond_d
    move v2, v0

    goto :goto_8

    :cond_e
    move v0, v1

    goto/16 :goto_3
.end method

.method e()V
    .locals 4

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1575
    :cond_0
    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    .line 1576
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_1

    .line 1577
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0

    .line 1580
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0
.end method

.method e(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    move v0, v1

    .line 2894
    :goto_0
    if-ge v0, v2, :cond_1

    .line 2895
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v3

    .line 2896
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/ce;->c()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/ce;->b:I

    if-lt v4, p1, :cond_0

    .line 2901
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/ce;->a(IZ)V

    .line 2902
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 2894
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2905
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bv;->b(II)V

    .line 2906
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2907
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 3278
    return-void
.end method

.method f(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 3294
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 3295
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    if-nez v1, :cond_0

    .line 3296
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 3311
    :goto_0
    return-object v0

    .line 3299
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 3300
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3301
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 3302
    :goto_1
    if-ge v3, v5, :cond_1

    .line 3303
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3304
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bp;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v1, v6, p1, p0, v7}, Landroid/support/v7/widget/bp;->a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/cb;)V

    .line 3305
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 3306
    iget v1, v2, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->top:I

    .line 3307
    iget v1, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->right:I

    .line 3308
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v6

    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 3302
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 3310
    :cond_1
    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    move-object v0, v2

    .line 3311
    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 1585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_0

    .line 1596
    :goto_0
    return-void

    .line 1588
    :cond_0
    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    .line 1589
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0

    .line 1593
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0
.end method

.method f(II)V
    .locals 6

    .prologue
    .line 2946
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    .line 2947
    add-int v3, p1, p2

    .line 2949
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    .line 2950
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2951
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v4

    .line 2952
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/ce;->c()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2949
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2955
    :cond_1
    iget v5, v4, Landroid/support/v7/widget/ce;->b:I

    if-lt v5, p1, :cond_0

    iget v5, v4, Landroid/support/v7/widget/ce;->b:I

    if-ge v5, v3, :cond_0

    .line 2958
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ce;->a(I)V

    .line 2959
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2960
    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ce;->a(I)V

    .line 2963
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    goto :goto_1

    .line 2966
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/bv;->c(II)V

    .line 2967
    return-void
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    .prologue
    .line 1619
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/br;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1620
    if-eqz v0, :cond_1

    .line 1630
    :cond_0
    :goto_0
    return-object v0

    .line 1623
    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1624
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1625
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v1, :cond_2

    .line 1626
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 1627
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/support/v7/widget/br;->a(Landroid/view/View;ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)Landroid/view/View;

    move-result-object v0

    .line 1628
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 1630
    :cond_2
    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method g()V
    .locals 4

    .prologue
    .line 1599
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    if-eqz v0, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1602
    :cond_0
    new-instance v0, Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    .line 1603
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eqz v0, :cond_1

    .line 1604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0

    .line 1607
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/aa;->a(II)V

    goto :goto_0
.end method

.method public g(II)V
    .locals 0

    .prologue
    .line 3336
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2811
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_0

    .line 2812
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2814
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->a()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2819
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_0

    .line 2820
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2822
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/br;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_0

    .line 2828
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2830
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/br;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/bi;
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->p()I

    move-result v0

    .line 771
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/cf;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/cf;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/bl;
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    return-object v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/br;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    return-object v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/bu;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->f()Landroid/support/v7/widget/bu;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 1612
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->H:Landroid/support/v4/widget/aa;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v4/widget/aa;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v4/widget/aa;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->E:Landroid/support/v4/widget/aa;

    .line 1613
    return-void
.end method

.method h(II)V
    .locals 2

    .prologue
    .line 3341
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 3342
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 3343
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3346
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->g(II)V

    .line 3350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/bt;

    if-eqz v0, :cond_0

    .line 3351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/bt;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3353
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->V:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bt;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/bt;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3354
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3358
    :cond_1
    return-void
.end method

.method i()Z
    .locals 1

    .prologue
    .line 2182
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method j()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-nez v0, :cond_1

    .line 2305
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2308
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_2

    .line 2309
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2312
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2313
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2314
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->x()V

    .line 2316
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    .line 2318
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    :goto_1
    iput-object v0, v1, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    .line 2320
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->g:Z

    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->f:Z

    .line 2322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v1}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;)Z

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;Z)Z

    .line 2323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/cb;->e:I

    .line 2324
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a([I)V

    .line 2326
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->clear()V

    .line 2329
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->clear()V

    .line 2330
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v10

    move v8, v7

    .line 2331
    :goto_2
    if-ge v8, v10, :cond_6

    .line 2332
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 2333
    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v0}, Landroid/support/v7/widget/bi;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2331
    :cond_3
    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    .line 2318
    goto :goto_1

    .line 2336
    :cond_5
    iget-object v5, v1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2337
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v11, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    new-instance v0, Landroid/support/v7/widget/bq;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/ce;IIII)V

    invoke-virtual {v11, v1, v0}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2341
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2348
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->l()V

    .line 2350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    if-eqz v0, :cond_8

    .line 2351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    move v0, v7

    .line 2352
    :goto_4
    if-ge v0, v1, :cond_8

    .line 2353
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 2354
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->n()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->p()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2355
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ce;)J

    move-result-wide v4

    .line 2356
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v3, v3, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v3, v3, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v3, v2}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2352
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2362
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->c(Landroid/support/v7/widget/cb;)Z

    move-result v0

    .line 2363
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v1, v7}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 2365
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V

    .line 2366
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v1, v0}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 2368
    new-instance v3, Lcom/yelp/android/e/a;

    invoke-direct {v3}, Lcom/yelp/android/e/a;-><init>()V

    move v1, v7

    .line 2369
    :goto_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v0

    if-ge v1, v0, :cond_c

    .line 2371
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v4

    .line 2372
    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2369
    :cond_9
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_a
    move v2, v7

    .line 2375
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_23

    .line 2376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 2377
    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    if-ne v0, v4, :cond_b

    move v0, v9

    .line 2382
    :goto_8
    if-nez v0, :cond_9

    .line 2383
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v0, v2, v5, v8, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2375
    :cond_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    .line 2388
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 2389
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->c()V

    move-object v8, v3

    .line 2406
    :goto_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/cb;->e:I

    .line 2407
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v7}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;I)I

    .line 2410
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v7}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;Z)Z

    .line 2411
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)V

    .line 2413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v7}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;Z)Z

    .line 2414
    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 2417
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_f

    move v0, v9

    :goto_a
    invoke-static {v1, v0}, Landroid/support/v7/widget/cb;->c(Landroid/support/v7/widget/cb;Z)Z

    .line 2419
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/yelp/android/e/a;

    invoke-direct {v0}, Lcom/yelp/android/e/a;-><init>()V

    move-object v10, v0

    .line 2423
    :goto_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v12

    move v11, v7

    .line 2424
    :goto_c
    if-ge v11, v12, :cond_13

    .line 2425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v1

    .line 2426
    invoke-virtual {v1}, Landroid/support/v7/widget/ce;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2424
    :goto_d
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_c

    .line 2391
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->m()V

    .line 2393
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->e()V

    .line 2394
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    if-eqz v0, :cond_22

    .line 2395
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    move v0, v7

    .line 2396
    :goto_e
    if-ge v0, v1, :cond_22

    .line 2397
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 2398
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->n()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->p()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_e

    .line 2399
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ce;)J

    move-result-wide v4

    .line 2400
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v3, v3, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2401
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v3, v3, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v3, v2}, Lcom/yelp/android/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2396
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_f
    move v0, v7

    .line 2417
    goto/16 :goto_a

    :cond_10
    move-object v10, v6

    .line 2421
    goto :goto_b

    .line 2429
    :cond_11
    iget-object v5, v1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2430
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ce;)J

    move-result-wide v2

    .line 2431
    if-eqz v10, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2432
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0, v1}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 2434
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v13, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    new-instance v0, Landroid/support/v7/widget/bq;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/bq;-><init>(Landroid/support/v7/widget/ce;IIII)V

    invoke-virtual {v13, v1, v0}, Lcom/yelp/android/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 2438
    :cond_13
    invoke-direct {p0, v8}, Landroid/support/v7/widget/RecyclerView;->a(Lcom/yelp/android/e/a;)V

    .line 2440
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->size()I

    move-result v0

    .line 2441
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_15

    .line 2442
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 2443
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v2, v0}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2444
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/e/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bq;

    .line 2445
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v2, v1}, Lcom/yelp/android/e/a;->d(I)Ljava/lang/Object;

    .line 2447
    iget-object v2, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    iget-object v2, v2, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2448
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v3, v0, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/ce;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/bv;->d(Landroid/support/v7/widget/ce;)V

    .line 2449
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bq;)V

    .line 2441
    :cond_14
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 2453
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->size()I

    move-result v0

    .line 2454
    if-lez v0, :cond_19

    .line 2455
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_10
    if-ltz v3, :cond_19

    .line 2456
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v3}, Lcom/yelp/android/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 2457
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, v1, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v1, v3}, Lcom/yelp/android/e/a;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/bq;

    .line 2458
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v2}, Lcom/yelp/android/e/a;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v2, v0}, Lcom/yelp/android/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 2460
    :cond_16
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v2, v2, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v2, v3}, Lcom/yelp/android/e/a;->d(I)Ljava/lang/Object;

    .line 2461
    if-eqz v8, :cond_18

    iget-object v2, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    invoke-virtual {v8, v2}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2463
    :goto_11
    iget v4, v1, Landroid/support/v7/widget/bq;->b:I

    iget v1, v1, Landroid/support/v7/widget/bq;->c:I

    invoke-direct {p0, v0, v2, v4, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ce;Landroid/graphics/Rect;II)V

    .line 2455
    :cond_17
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_10

    :cond_18
    move-object v2, v6

    .line 2461
    goto :goto_11

    .line 2469
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->size()I

    move-result v11

    move v8, v7

    .line 2470
    :goto_12
    if-ge v8, v11, :cond_1c

    .line 2471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v8}, Lcom/yelp/android/e/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ce;

    .line 2472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->b:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v8}, Lcom/yelp/android/e/a;->c(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/support/v7/widget/bq;

    .line 2473
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->a:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/support/v7/widget/bq;

    .line 2474
    if-eqz v3, :cond_1b

    if-eqz v5, :cond_1b

    .line 2475
    iget v0, v3, Landroid/support/v7/widget/bq;->b:I

    iget v2, v5, Landroid/support/v7/widget/bq;->b:I

    if-ne v0, v2, :cond_1a

    iget v0, v3, Landroid/support/v7/widget/bq;->c:I

    iget v2, v5, Landroid/support/v7/widget/bq;->c:I

    if-eq v0, v2, :cond_1b

    .line 2476
    :cond_1a
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/ce;->a(Z)V

    .line 2481
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget v2, v3, Landroid/support/v7/widget/bq;->b:I

    iget v3, v3, Landroid/support/v7/widget/bq;->c:I

    iget v4, v5, Landroid/support/v7/widget/bq;->b:I

    iget v5, v5, Landroid/support/v7/widget/bq;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/ce;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2483
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->B()V

    .line 2470
    :cond_1b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_12

    .line 2489
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-virtual {v0}, Lcom/yelp/android/e/a;->size()I

    move-result v0

    .line 2491
    :goto_13
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_14
    if-ltz v2, :cond_20

    .line 2492
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-virtual {v0, v2}, Lcom/yelp/android/e/a;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2493
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v0, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ce;

    .line 2494
    iget-object v1, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    .line 2495
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2491
    :cond_1d
    :goto_15
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_14

    :cond_1e
    move v0, v7

    .line 2489
    goto :goto_13

    .line 2500
    :cond_1f
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-static {v1}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bv;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-static {v1}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bv;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 2502
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/yelp/android/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ce;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ce;Landroid/support/v7/widget/ce;)V

    goto :goto_15

    .line 2508
    :cond_20
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2509
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/bv;)V

    .line 2510
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget v1, v1, Landroid/support/v7/widget/cb;->e:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/cb;->c(Landroid/support/v7/widget/cb;I)I

    .line 2511
    iput-boolean v7, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    .line 2512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v7}, Landroid/support/v7/widget/cb;->c(Landroid/support/v7/widget/cb;Z)Z

    .line 2513
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v7}, Landroid/support/v7/widget/cb;->d(Landroid/support/v7/widget/cb;Z)Z

    .line 2514
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->y()V

    .line 2515
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-static {v0, v7}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/br;Z)Z

    .line 2516
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-static {v0}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bv;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2517
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-static {v0}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bv;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2519
    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iput-object v6, v0, Landroid/support/v7/widget/cb;->c:Lcom/yelp/android/e/a;

    .line 2521
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ac:[I

    aget v0, v0, v7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->ac:[I

    aget v1, v1, v9

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->k(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    invoke-virtual {p0, v7, v7}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    goto/16 :goto_0

    :cond_22
    move-object v8, v6

    goto/16 :goto_9

    :cond_23
    move v0, v7

    goto/16 :goto_8
.end method

.method k()V
    .locals 4

    .prologue
    .line 2725
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v2

    .line 2726
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2727
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v0

    .line 2728
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    .line 2726
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2730
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->j()V

    .line 2731
    return-void
.end method

.method l()V
    .locals 4

    .prologue
    .line 2834
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    .line 2835
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2836
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 2841
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2842
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->b()V

    .line 2835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2845
    :cond_1
    return-void
.end method

.method m()V
    .locals 4

    .prologue
    .line 2848
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    .line 2849
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 2850
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 2851
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2852
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->a()V

    .line 2849
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2855
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->i()V

    .line 2856
    return-void
.end method

.method n()V
    .locals 5

    .prologue
    .line 2970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()I

    move-result v1

    .line 2971
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_7

    .line 2972
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 2974
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2971
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2977
    :cond_1
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->p()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->l()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2978
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2979
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2980
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    iget v4, v2, Landroid/support/v7/widget/ce;->b:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/bi;->a(I)I

    move-result v3

    .line 2981
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->f()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 2983
    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->A()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2984
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    iget v4, v2, Landroid/support/v7/widget/ce;->b:I

    invoke-virtual {v3, v2, v4}, Landroid/support/v7/widget/bi;->b(Landroid/support/v7/widget/ce;I)V

    goto :goto_1

    .line 2989
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2994
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2999
    :cond_7
    return-void
.end method

.method o()V
    .locals 4

    .prologue
    .line 3021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->c()I

    move-result v1

    .line 3022
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3023
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v2

    .line 3024
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/ce;->c()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3025
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ce;->a(I)V

    .line 3022
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3028
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->k()V

    .line 3029
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->h()V

    .line 3030
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1675
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1676
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->D:I

    .line 1677
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    .line 1678
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 1679
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 1682
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->aa:Z

    .line 1683
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1687
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1688
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0}, Landroid/support/v7/widget/bl;->c()V

    .line 1691
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 1693
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 1694
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    .line 1695
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bv;)V

    .line 1698
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ad:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1699
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 2796
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2799
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 2800
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bp;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, p1, p0, v3}, Landroid/support/v7/widget/bp;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/cb;)V

    .line 2799
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2802
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_1

    .line 2031
    :cond_0
    :goto_0
    return v4

    .line 2009
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2012
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2013
    const/16 v0, 0x9

    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->e(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2018
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v2}, Landroid/support/v7/widget/br;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2019
    const/16 v2, 0xa

    invoke-static {p1, v2}, Landroid/support/v4/view/ba;->e(Landroid/view/MotionEvent;I)F

    move-result v2

    .line 2025
    :goto_2
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    .line 2026
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2027
    mul-float/2addr v2, v1

    float-to-int v2, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2016
    goto :goto_1

    :cond_4
    move v2, v1

    .line 2022
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    .line 1814
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1815
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1888
    :cond_0
    :goto_0
    return v2

    .line 1819
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v0

    .line 1820
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v4}, Landroid/support/v7/widget/br;->e()Z

    move-result v4

    .line 1822
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2

    .line 1823
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 1825
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1827
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1828
    invoke-static {p1}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;)I

    move-result v6

    .line 1830
    packed-switch v5, :pswitch_data_0

    .line 1888
    :cond_3
    :goto_1
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1832
    :pswitch_1
    invoke-static {p1, v3}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    .line 1836
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1837
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1838
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_1

    .line 1843
    :pswitch_2
    invoke-static {p1, v6}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1844
    invoke-static {p1, v6}, Landroid/support/v4/view/ba;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1845
    invoke-static {p1, v6}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_1

    .line 1849
    :pswitch_3
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;I)I

    move-result v5

    .line 1850
    if-gez v5, :cond_4

    .line 1851
    const-string/jumbo v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 1853
    goto/16 :goto_0

    .line 1856
    :cond_4
    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->c(Landroid/view/MotionEvent;I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 1857
    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;I)F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 1858
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v7, v2, :cond_3

    .line 1859
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    sub-int/2addr v6, v7

    .line 1860
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int/2addr v5, v7

    .line 1862
    if-eqz v0, :cond_8

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v0, v7, :cond_8

    .line 1863
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v6, :cond_6

    move v0, v1

    :goto_2
    mul-int/2addr v0, v8

    add-int/2addr v0, v7

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    move v0, v2

    .line 1866
    :goto_3
    if-eqz v4, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v4, v6, :cond_5

    .line 1867
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v5, :cond_7

    :goto_4
    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v2

    .line 1870
    :cond_5
    if-eqz v0, :cond_3

    .line 1871
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 1863
    goto :goto_2

    :cond_7
    move v1, v2

    .line 1867
    goto :goto_4

    .line 1877
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1881
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1885
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto :goto_3

    .line 1830
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 2707
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2708
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 2709
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->j()V

    .line 2710
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    .line 2711
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2712
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 2713
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2054
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    if-eqz v0, :cond_0

    .line 2055
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 2056
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->D()V

    .line 2058
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0}, Landroid/support/v7/widget/cb;->a(Landroid/support/v7/widget/cb;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;Z)Z

    .line 2069
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->z:Z

    .line 2070
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 2073
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    if-eqz v0, :cond_2

    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/bi;

    invoke-virtual {v1}, Landroid/support/v7/widget/bi;->a()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/cb;->e:I

    .line 2078
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_3

    .line 2079
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->j(II)V

    .line 2084
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v3}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;Z)Z

    .line 2085
    return-void

    .line 2066
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->e()V

    .line 2067
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-static {v0, v3}, Landroid/support/v7/widget/cb;->b(Landroid/support/v7/widget/cb;Z)Z

    goto :goto_0

    .line 2076
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    iput v3, v0, Landroid/support/v7/widget/cb;->e:I

    goto :goto_1

    .line 2081
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;II)V

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    .line 831
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 832
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 833
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->a(Landroid/os/Parcelable;)V

    .line 836
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 817
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 818
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 819
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->j:Landroid/support/v7/widget/RecyclerView$SavedState;

    # invokes: Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->access$1300(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 826
    :goto_0
    return-object v0

    .line 820
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v1}, Landroid/support/v7/widget/br;->c()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 823
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 2126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2127
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2128
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 2130
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 1893
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    .line 1982
    :goto_0
    return v3

    .line 1898
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v6

    .line 1899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->e()Z

    move-result v7

    .line 1901
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1902
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    .line 1904
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1906
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1907
    invoke-static {p1}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;)I

    move-result v5

    .line 1909
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1911
    :pswitch_1
    invoke-static {p1, v2}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_0

    .line 1917
    :pswitch_2
    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->b(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    .line 1918
    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->c(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    .line 1919
    invoke-static {p1, v5}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    goto :goto_0

    .line 1923
    :pswitch_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1924
    if-gez v0, :cond_2

    .line 1925
    const-string/jumbo v0, "RecyclerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error processing scroll; pointer index for id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 1927
    goto/16 :goto_0

    .line 1930
    :cond_2
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->c(Landroid/view/MotionEvent;I)F

    move-result v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 1931
    invoke-static {p1, v0}, Landroid/support/v4/view/ba;->d(Landroid/view/MotionEvent;I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v5, v0

    .line 1932
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-eq v0, v3, :cond_4

    .line 1933
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    sub-int v0, v4, v0

    .line 1934
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    sub-int v8, v5, v8

    .line 1936
    if-eqz v6, :cond_f

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v9, v10, :cond_f

    .line 1937
    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->L:I

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v0, :cond_7

    move v0, v1

    :goto_1
    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    move v0, v3

    .line 1940
    :goto_2
    if-eqz v7, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-le v9, v10, :cond_3

    .line 1941
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->M:I

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    if-gez v8, :cond_8

    :goto_3
    mul-int/2addr v1, v9

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    move v0, v3

    .line 1944
    :cond_3
    if-eqz v0, :cond_4

    .line 1945
    invoke-direct {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1948
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->I:I

    if-ne v0, v3, :cond_6

    .line 1949
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    sub-int v0, v4, v0

    .line 1950
    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    sub-int v8, v5, v1

    .line 1951
    if-eqz v6, :cond_9

    neg-int v1, v0

    :goto_4
    if-eqz v7, :cond_5

    neg-int v2, v8

    :cond_5
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->a(IIZII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1953
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1956
    :cond_6
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->N:I

    .line 1957
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->O:I

    goto/16 :goto_0

    :cond_7
    move v0, v3

    .line 1937
    goto :goto_1

    :cond_8
    move v1, v3

    .line 1941
    goto :goto_3

    :cond_9
    move v1, v2

    .line 1951
    goto :goto_4

    .line 1961
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 1965
    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->R:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1966
    if-eqz v6, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {v0, v1}, Landroid/support/v4/view/bz;->a(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    move v1, v0

    .line 1968
    :goto_5
    if-eqz v7, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->J:I

    invoke-static {v0, v5}, Landroid/support/v4/view/bz;->b(Landroid/view/VelocityTracker;I)F

    move-result v0

    neg-float v0, v0

    .line 1970
    :goto_6
    cmpl-float v5, v1, v4

    if-nez v5, :cond_a

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_b

    :cond_a
    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(II)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1971
    :cond_b
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1973
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->K:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1974
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->v()V

    goto/16 :goto_0

    :cond_d
    move v1, v4

    .line 1966
    goto :goto_5

    :cond_e
    move v0, v4

    .line 1968
    goto :goto_6

    .line 1978
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->w()V

    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto/16 :goto_2

    .line 1909
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 3410
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->C:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/o;

    invoke-virtual {v0}, Landroid/support/v7/widget/o;->d()Z

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

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 2572
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v0

    .line 2573
    if-eqz v0, :cond_0

    .line 2574
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2575
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->k()V

    .line 2581
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    .line 2582
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2583
    return-void

    .line 2576
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/ce;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2577
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1635
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v0, p0, v2, p1, p2}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/cb;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 1636
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1641
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1642
    instance-of v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    .line 1644
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1645
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    if-nez v2, :cond_0

    .line 1646
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 1647
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1648
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1649
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1650
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 1654
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1656
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1658
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1659
    return-void

    :cond_2
    move v0, v1

    .line 1656
    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/br;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2717
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->w:Z

    if-nez v0, :cond_0

    .line 2718
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2722
    :goto_0
    return-void

    .line 2720
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->x:Z

    goto :goto_0
.end method

.method public scrollBy(II)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1151
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-nez v0, :cond_1

    .line 1152
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0}, Landroid/support/v7/widget/br;->d()Z

    move-result v0

    .line 1157
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v1}, Landroid/support/v7/widget/br;->e()Z

    move-result v2

    .line 1158
    if-nez v0, :cond_2

    if-eqz v2, :cond_0

    .line 1159
    :cond_2
    if-eqz v0, :cond_3

    move v1, p1

    :goto_1
    if-eqz v2, :cond_4

    move v2, p2

    :goto_2
    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView;->a(IIZII)Z

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method public scrollTo(II)V
    .locals 2

    .prologue
    .line 1145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 2210
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2214
    :goto_0
    return-void

    .line 2213
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/cf;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/cf;

    .line 431
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->ab:Landroid/support/v7/widget/cf;

    invoke-static {p0, v0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 432
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/bi;)V
    .locals 2

    .prologue
    .line 684
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/bi;ZZ)V

    .line 685
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 686
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .prologue
    .line 619
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    if-eq p1, v0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 622
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->k:Z

    .line 623
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 624
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->v:Z

    if-eqz v0, :cond_1

    .line 625
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 627
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .prologue
    .line 606
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 607
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/bl;)V
    .locals 2

    .prologue
    .line 2144
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_0

    .line 2145
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    invoke-virtual {v0}, Landroid/support/v7/widget/bl;->c()V

    .line 2146
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/bn;)V

    .line 2148
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    .line 2149
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    if-eqz v0, :cond_1

    .line 2150
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bl;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->W:Landroid/support/v7/widget/bn;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bl;->a(Landroid/support/v7/widget/bn;)V

    .line 2152
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bv;->a(I)V

    .line 955
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/br;)V
    .locals 3

    .prologue
    .line 788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-ne p1, v0, :cond_0

    .line 813
    :goto_0
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    if-eqz v0, :cond_2

    .line 794
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_1

    .line 795
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bv;)V

    .line 797
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 799
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0}, Landroid/support/v7/widget/bv;->a()V

    .line 800
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 801
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    .line 802
    if-eqz p1, :cond_4

    .line 803
    iget-object v0, p1, Landroid/support/v7/widget/br;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 804
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/br;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/br;->b(Landroid/support/v7/widget/RecyclerView;)V

    .line 808
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->t:Z

    if-eqz v0, :cond_4

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/br;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/br;->c(Landroid/support/v7/widget/RecyclerView;)V

    .line 812
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/bt;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1061
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->U:Landroid/support/v7/widget/bt;

    .line 1062
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/bu;)V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/bu;)V

    .line 929
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/bw;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v7/widget/bw;

    .line 756
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 640
    packed-switch p1, :pswitch_data_0

    .line 642
    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    .line 653
    :goto_0
    return-void

    .line 650
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/cx;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->P:I

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/cc;)V
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bv;->a(Landroid/support/v7/widget/cc;)V

    .line 940
    return-void
.end method
