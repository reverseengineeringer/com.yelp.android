.class Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;
.super Ljava/lang/Object;
.source "ScaleWebImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/ScaleWebImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


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
    .line 332
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->b:J

    .line 334
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->e(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/util/Pair;

    move-result-object v1

    .line 335
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 336
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 337
    const/4 v2, 0x2

    aget v2, v0, v2

    iput v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->c:F

    .line 338
    const/4 v2, 0x5

    aget v0, v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->e:F

    .line 339
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->c:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->d:F

    .line 340
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->f:F

    .line 341
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->b:J

    sub-long/2addr v0, v2

    .line 346
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 347
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 348
    const/4 v3, 0x2

    aget v3, v2, v3

    .line 349
    const/4 v4, 0x5

    aget v2, v2, v4

    .line 351
    const-wide/16 v4, 0xc8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->d:F

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->f:F

    sub-float v2, v3, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 353
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->a(Lcom/yelp/android/ui/widgets/ScaleWebImageView;Z)Z

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 362
    return-void

    .line 355
    :cond_0
    long-to-float v0, v0

    const/high16 v1, 0x43480000    # 200.0f

    div-float/2addr v0, v1

    .line 356
    iget v1, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->c:F

    iget v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->d:F

    iget v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->c:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 357
    iget v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->e:F

    iget v5, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->e:F

    sub-float/2addr v5, v6

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    .line 358
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-static {v4}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->f(Lcom/yelp/android/ui/widgets/ScaleWebImageView;)Landroid/graphics/Matrix;

    move-result-object v4

    sub-float/2addr v1, v3

    sub-float/2addr v0, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ScaleWebImageView$a;->a:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, p0, v2, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
