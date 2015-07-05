.class public final Lcom/bumptech/glide/load/resource/bitmap/v;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# direct methods
.method public static a(I)I
    .locals 1

    .prologue
    .line 228
    packed-switch p0, :pswitch_data_0

    .line 242
    const/4 v0, 0x0

    .line 245
    :goto_0
    return v0

    .line 231
    :pswitch_0
    const/16 v0, 0x5a

    .line 232
    goto :goto_0

    .line 235
    :pswitch_1
    const/16 v0, 0xb4

    .line 236
    goto :goto_0

    .line 239
    :pswitch_2
    const/16 v0, 0x10e

    .line 240
    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    .line 39
    if-nez p1, :cond_1

    .line 40
    const/4 p1, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object p1

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_0

    .line 47
    :cond_2
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, p2

    if-le v1, v2, :cond_3

    .line 49
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 50
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    .line 56
    :goto_1
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    add-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    add-float/2addr v0, v5

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-eqz p0, :cond_4

    .line 67
    :goto_2
    invoke-static {p1, p0}, Lcom/bumptech/glide/load/resource/bitmap/v;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 71
    invoke-virtual {v0, p1, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p1, p0

    .line 72
    goto :goto_0

    .line 52
    :cond_3
    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v1, v2

    .line 53
    int-to-float v1, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v1, v4

    mul-float/2addr v1, v5

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 257
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, p0

    .line 282
    :goto_0
    return-object v0

    .line 261
    :cond_1
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 262
    invoke-static {p2, v1}, Lcom/bumptech/glide/load/resource/bitmap/v;->a(ILandroid/graphics/Matrix;)V

    .line 265
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 266
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 268
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 269
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 271
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-interface {p1, v3, v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 272
    if-nez v0, :cond_2

    .line 273
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    :cond_2
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 279
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 280
    invoke-virtual {v2, p0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;II)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 87
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 88
    const-string/jumbo v0, "TransformationUtils"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "TransformationUtils"

    const-string/jumbo v1, "requested target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-object p0

    .line 93
    :cond_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 94
    int-to-float v1, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v4, v0

    .line 103
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 104
    const-string/jumbo v0, "TransformationUtils"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string/jumbo v0, "TransformationUtils"

    const-string/jumbo v1, "adjusted target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 111
    :goto_1
    invoke-interface {p1, v3, v4, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    if-nez v1, :cond_5

    .line 113
    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    :goto_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/load/resource/bitmap/v;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 118
    const-string/jumbo v1, "TransformationUtils"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const-string/jumbo v1, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string/jumbo v1, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toFit:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v1, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toReuse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string/jumbo v1, "TransformationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "minPct:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 126
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 127
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    .line 129
    invoke-virtual {v1, p0, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object p0, v0

    .line 131
    goto/16 :goto_0

    .line 110
    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method static a(ILandroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    .line 287
    packed-switch p0, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 289
    :pswitch_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 295
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 296
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 299
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 300
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 303
    :pswitch_4
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 306
    :pswitch_5
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 307
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 310
    :pswitch_6
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 147
    :cond_0
    return-void
.end method
