.class Landroid/support/v7/widget/cd;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/widget/ax;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3427
    iput-object p1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3418
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->q()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/cd;->e:Landroid/view/animation/Interpolator;

    .line 3422
    iput-boolean v1, p0, Landroid/support/v7/widget/cd;->f:Z

    .line 3425
    iput-boolean v1, p0, Landroid/support/v7/widget/cd;->g:Z

    .line 3428
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->q()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ax;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ax;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    .line 3429
    return-void
.end method

.method private a(F)F
    .locals 4

    .prologue
    .line 3592
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    .line 3593
    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 3594
    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 3598
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3599
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3600
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 3601
    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 3602
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 3603
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 3604
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 3605
    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3606
    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/v7/widget/cd;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 3610
    if-lez v4, :cond_2

    .line 3611
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 3616
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 3600
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3603
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 3613
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 3614
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 3613
    goto :goto_3
.end method

.method private c()V
    .locals 1

    .prologue
    .line 3555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/cd;->g:Z

    .line 3556
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/cd;->f:Z

    .line 3557
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 3560
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/cd;->f:Z

    .line 3561
    iget-boolean v0, p0, Landroid/support/v7/widget/cd;->g:Z

    if-eqz v0, :cond_0

    .line 3562
    invoke-virtual {p0}, Landroid/support/v7/widget/cd;->a()V

    .line 3564
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 3567
    iget-boolean v0, p0, Landroid/support/v7/widget/cd;->f:Z

    if-eqz v0, :cond_0

    .line 3568
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/cd;->g:Z

    .line 3573
    :goto_0
    return-void

    .line 3570
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3571
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ce;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 3576
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3577
    iput v1, p0, Landroid/support/v7/widget/cd;->c:I

    iput v1, p0, Landroid/support/v7/widget/cd;->b:I

    .line 3578
    iget-object v0, p0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ax;->a(IIIIIIII)V

    .line 3580
    invoke-virtual {p0}, Landroid/support/v7/widget/cd;->a()V

    .line 3581
    return-void
.end method

.method public a(III)V
    .locals 1

    .prologue
    .line 3620
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->q()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/cd;->a(IIILandroid/view/animation/Interpolator;)V

    .line 3621
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .prologue
    .line 3588
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/cd;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/cd;->a(III)V

    .line 3589
    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3624
    iget-object v0, p0, Landroid/support/v7/widget/cd;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 3625
    iput-object p4, p0, Landroid/support/v7/widget/cd;->e:Landroid/view/animation/Interpolator;

    .line 3626
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ax;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ax;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    .line 3628
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3629
    iput v1, p0, Landroid/support/v7/widget/cd;->c:I

    iput v1, p0, Landroid/support/v7/widget/cd;->b:I

    .line 3630
    iget-object v0, p0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ax;->a(IIIII)V

    .line 3631
    invoke-virtual {p0}, Landroid/support/v7/widget/cd;->a()V

    .line 3632
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3636
    iget-object v0, p0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->h()V

    .line 3637
    return-void
.end method

.method public b(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3584
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v7/widget/cd;->a(IIII)V

    .line 3585
    return-void
.end method

.method public run()V
    .locals 22

    .prologue
    .line 3433
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/cd;->c()V

    .line 3434
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 3437
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/cd;->d:Landroid/support/v4/widget/ax;

    .line 3438
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v4

    iget-object v12, v4, Landroid/support/v7/widget/br;->s:Landroid/support/v7/widget/bz;

    .line 3439
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->g()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3440
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->b()I

    move-result v13

    .line 3441
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->c()I

    move-result v14

    .line 3442
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/cd;->b:I

    sub-int v15, v13, v4

    .line 3443
    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/cd;->c:I

    sub-int v16, v14, v4

    .line 3444
    const/4 v7, 0x0

    .line 3445
    const/4 v5, 0x0

    .line 3446
    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/cd;->b:I

    .line 3447
    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/v7/widget/cd;->c:I

    .line 3448
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 3449
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/bi;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 3450
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 3451
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)V

    .line 3452
    const-string/jumbo v8, "RV Scroll"

    invoke-static {v8}, Lcom/yelp/android/c/h;->a(Ljava/lang/String;)V

    .line 3453
    if-eqz v15, :cond_0

    .line 3454
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v6, v15, v7, v8}, Landroid/support/v7/widget/br;->a(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v7

    .line 3455
    sub-int v6, v15, v7

    .line 3457
    :cond_0
    if-eqz v16, :cond_1

    .line 3458
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/bv;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5, v8}, Landroid/support/v7/widget/br;->b(ILandroid/support/v7/widget/bv;Landroid/support/v7/widget/cb;)I

    move-result v5

    .line 3459
    sub-int v4, v16, v5

    .line 3461
    :cond_1
    invoke-static {}, Lcom/yelp/android/c/h;->a()V

    .line 3462
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3464
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v8}, Landroid/support/v7/widget/r;->b()I

    move-result v9

    .line 3465
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    .line 3466
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/r;

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/r;->b(I)Landroid/view/View;

    move-result-object v10

    .line 3467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ce;

    move-result-object v17

    .line 3468
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 3469
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/ce;->h:Landroid/support/v7/widget/ce;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    move-object/from16 v17, v0

    .line 3470
    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v18

    .line 3471
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    .line 3472
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_3

    .line 3474
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    add-int v19, v19, v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 3465
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3482
    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Landroid/support/v7/widget/bz;->b()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v12}, Landroid/support/v7/widget/bz;->c()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3484
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/cb;

    invoke-virtual {v8}, Landroid/support/v7/widget/cb;->e()I

    move-result v8

    .line 3485
    if-nez v8, :cond_17

    .line 3486
    invoke-virtual {v12}, Landroid/support/v7/widget/bz;->a()V

    .line 3494
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)V

    .line 3495
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_6
    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    .line 3497
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 3498
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3500
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v4/view/ce;->a(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_8

    .line 3502
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    move/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3504
    :cond_8
    if-nez v5, :cond_9

    if-eqz v4, :cond_e

    .line 3505
    :cond_9
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->f()F

    move-result v8

    float-to-int v9, v8

    .line 3507
    const/4 v8, 0x0

    .line 3508
    if-eq v5, v13, :cond_21

    .line 3509
    if-gez v5, :cond_19

    neg-int v8, v9

    :goto_2
    move v10, v8

    .line 3512
    :goto_3
    const/4 v8, 0x0

    .line 3513
    if-eq v4, v14, :cond_20

    .line 3514
    if-gez v4, :cond_1b

    neg-int v9, v9

    .line 3517
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v4/view/ce;->a(Landroid/view/View;)I

    move-result v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v8, v0, :cond_b

    .line 3519
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8, v10, v9}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 3521
    :cond_b
    if-nez v10, :cond_c

    if-eq v5, v13, :cond_c

    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->d()I

    move-result v5

    if-nez v5, :cond_e

    :cond_c
    if-nez v9, :cond_d

    if-eq v4, v14, :cond_d

    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->e()I

    move-result v4

    if-nez v4, :cond_e

    .line 3523
    :cond_d
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->h()V

    .line 3526
    :cond_e
    if-nez v7, :cond_f

    if-eqz v6, :cond_10

    .line 3527
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v7, v6}, Landroid/support/v7/widget/RecyclerView;->h(II)V

    .line 3530
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 3531
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3534
    :cond_11
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/br;->e()Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v0, v16

    if-ne v6, v0, :cond_1c

    const/4 v4, 0x1

    move v5, v4

    .line 3536
    :goto_5
    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/br;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/br;->d()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-ne v7, v15, :cond_1d

    const/4 v4, 0x1

    .line 3538
    :goto_6
    if-nez v15, :cond_12

    if-eqz v16, :cond_13

    :cond_12
    if-nez v4, :cond_13

    if-eqz v5, :cond_1e

    :cond_13
    const/4 v4, 0x1

    .line 3541
    :goto_7
    invoke-virtual {v11}, Landroid/support/v4/widget/ax;->a()Z

    move-result v5

    if-nez v5, :cond_14

    if-nez v4, :cond_1f

    .line 3542
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/cd;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3548
    :cond_15
    :goto_8
    if-eqz v12, :cond_16

    invoke-virtual {v12}, Landroid/support/v7/widget/bz;->b()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3549
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/support/v7/widget/bz;->a(Landroid/support/v7/widget/bz;II)V

    .line 3551
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/cd;->d()V

    .line 3552
    return-void

    .line 3487
    :cond_17
    invoke-virtual {v12}, Landroid/support/v7/widget/bz;->d()I

    move-result v9

    if-lt v9, v8, :cond_18

    .line 3488
    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v12, v8}, Landroid/support/v7/widget/bz;->a(I)V

    .line 3489
    sub-int v8, v15, v6

    sub-int v9, v16, v4

    invoke-static {v12, v8, v9}, Landroid/support/v7/widget/bz;->a(Landroid/support/v7/widget/bz;II)V

    goto/16 :goto_1

    .line 3491
    :cond_18
    sub-int v8, v15, v6

    sub-int v9, v16, v4

    invoke-static {v12, v8, v9}, Landroid/support/v7/widget/bz;->a(Landroid/support/v7/widget/bz;II)V

    goto/16 :goto_1

    .line 3509
    :cond_19
    if-lez v5, :cond_1a

    move v8, v9

    goto/16 :goto_2

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 3514
    :cond_1b
    if-gtz v4, :cond_a

    const/4 v9, 0x0

    goto/16 :goto_4

    .line 3534
    :cond_1c
    const/4 v4, 0x0

    move v5, v4

    goto :goto_5

    .line 3536
    :cond_1d
    const/4 v4, 0x0

    goto :goto_6

    .line 3538
    :cond_1e
    const/4 v4, 0x0

    goto :goto_7

    .line 3544
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/cd;->a()V

    goto :goto_8

    :cond_20
    move v9, v8

    goto/16 :goto_4

    :cond_21
    move v10, v8

    goto/16 :goto_3
.end method
