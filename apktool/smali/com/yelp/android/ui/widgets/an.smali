.class Lcom/yelp/android/ui/widgets/an;
.super Ljava/lang/Object;
.source "ScaleWebImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

.field private final b:J

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:F

.field private final g:Z

.field private final h:F

.field private final i:F


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;FFFZ)V
    .locals 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/widgets/an;->b:J

    .line 369
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/an;->c:F

    .line 370
    iput p2, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    .line 371
    iput p3, p0, Lcom/yelp/android/ui/widgets/an;->e:F

    .line 372
    iput p4, p0, Lcom/yelp/android/ui/widgets/an;->f:F

    .line 373
    iput-boolean p5, p0, Lcom/yelp/android/ui/widgets/an;->g:Z

    .line 374
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 375
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 376
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/an;->h:F

    .line 377
    const/4 v1, 0x5

    aget v0, v0, v1

    iput v0, p0, Lcom/yelp/android/ui/widgets/an;->i:F

    .line 378
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/widgets/an;->b:J

    sub-long/2addr v0, v2

    .line 385
    const-wide/16 v2, 0xc8

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/widgets/an;->e:F

    iget v4, p0, Lcom/yelp/android/ui/widgets/an;->f:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget v1, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;F)F

    .line 388
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/an;->g:Z

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    .line 390
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->h(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 391
    new-array v2, v8, [F

    .line 392
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 393
    aget v3, v2, v6

    .line 394
    aget v2, v2, v7

    .line 395
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    sub-float/2addr v0, v3

    sub-float/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 399
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 423
    :goto_1
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    goto :goto_0

    .line 402
    :cond_1
    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 403
    iget v1, p0, Lcom/yelp/android/ui/widgets/an;->c:F

    iget v2, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget v3, p0, Lcom/yelp/android/ui/widgets/an;->c:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 404
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)F

    move-result v2

    div-float v2, v1, v2

    .line 405
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;F)F

    .line 406
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget v3, p0, Lcom/yelp/android/ui/widgets/an;->e:F

    iget v4, p0, Lcom/yelp/android/ui/widgets/an;->f:F

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 407
    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/an;->g:Z

    if-eqz v1, :cond_2

    .line 408
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->g(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 409
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/yelp/android/ui/widgets/an;->d:F

    iget-object v4, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->h(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 410
    new-array v3, v8, [F

    .line 411
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 412
    aget v4, v3, v6

    .line 413
    aget v3, v3, v7

    .line 414
    iget v5, p0, Lcom/yelp/android/ui/widgets/an;->h:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/an;->h:F

    sub-float/2addr v1, v6

    mul-float/2addr v1, v0

    add-float/2addr v1, v5

    .line 415
    iget v5, p0, Lcom/yelp/android/ui/widgets/an;->i:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/an;->i:F

    sub-float/2addr v2, v6

    mul-float/2addr v0, v2

    add-float/2addr v0, v5

    .line 416
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    sub-float/2addr v1, v4

    sub-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 420
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 421
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/an;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->i(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V

    goto :goto_2
.end method
