.class Lcom/yelp/android/ui/widgets/am;
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


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)V
    .locals 3

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/widgets/am;->b:J

    .line 325
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/util/Pair;

    move-result-object v1

    .line 326
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 327
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 328
    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, p0, Lcom/yelp/android/ui/widgets/am;->c:F

    .line 329
    const/4 v2, 0x5

    aget v0, v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/am;->e:F

    .line 330
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/widgets/am;->c:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/am;->d:F

    .line 331
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/am;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/widgets/am;->f:F

    .line 332
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/widgets/am;->b:J

    sub-long/2addr v0, v2

    .line 337
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 338
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 339
    const/4 v3, 0x2

    aget v3, v2, v3

    .line 340
    const/4 v4, 0x5

    aget v2, v2, v4

    .line 342
    const-wide/16 v4, 0xc8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/am;->d:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/yelp/android/ui/widgets/am;->f:F

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 353
    return-void

    .line 346
    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 347
    iget v1, p0, Lcom/yelp/android/ui/widgets/am;->c:F

    iget v4, p0, Lcom/yelp/android/ui/widgets/am;->d:F

    iget v5, p0, Lcom/yelp/android/ui/widgets/am;->c:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 348
    iget v4, p0, Lcom/yelp/android/ui/widgets/am;->e:F

    iget v5, p0, Lcom/yelp/android/ui/widgets/am;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/am;->e:F

    sub-float/2addr v5, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 349
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    sub-float/2addr v1, v3

    sub-float/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/am;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
