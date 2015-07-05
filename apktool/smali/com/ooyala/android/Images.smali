.class Lcom/ooyala/android/Images;
.super Ljava/lang/Object;
.source "Images.java"


# static fields
.field public static final CLOSED_CAPTIONS:I = 0x6

.field public static final FULLSCREEN:I = 0x2

.field public static final NEXT:I = 0x4

.field public static final PAUSE:I = 0x1

.field public static final PLAY:I = 0x0

.field public static final PREVIOUS:I = 0x5

.field public static final SMALLSCREEN:I = 0x3


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closedCaptions(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 192
    const-string/jumbo v0, "iVBORw0KGgoAAAANSUhEUgAAAUAAAAE1CAMAAAChocnqAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAAZQTFRF////////VXz1bAAAAAJ0Uk5T/wDltzBKAAAEC0lEQVR42uzdQXIjMQxDUeD+l56sZ5UOKImUPva0xWcnVa1mWzKJIggABBBAAAmAAAIIIAEQQAABJAACCCCABEAAAQSQAAgggAASAAEEEEACIIAAAkgABBBAAAmAAAIIIAEQQAABBJAACCCAABIAAQQQQALgeEC1yxxANU5/QLVPZ0ANSU9AjUo7QI1LK0CNTBtAjU0PQOl5QT3KV0aoZ/mKCPWyX4WgnvYrENTTfAWEet0vFdTzfqGg8MsEhV8mKPwyQeGXCQq/TFD4ZYLCLxMEcCOghGACKCGYAEoIAngQUEIwAZQQPAF4cOysF+AcuN0rXwHYbgbyPOBgvdUNFAO6bY4CXuC3rIlKQDdPd0D7DsF6wEv41rRSBWjfI1gNeJNffTc1gPZVggBOA7TvEqwFvM2vuKMCQPs6QQAnAdr3CVYC6kVAbQS03/4KAgjgbED7SkEAAQQQQAABBPB6QPtOQQABBBBAAAEEEEAAAQQQwMcBJ1Q0BvxetKNiDOD3sh0VYwC/F+6omAP4vXJHxRzA73uWOyrmAH6fP9lRMQfw+yTtjoo5gN8fyNhRMQfw+zNBOyquA9TmijmA35+M3FEB4DOA0tfudlQA+AygPje3o+JSQG2rABBAAAEEEEAAAQQQQAABBBBANhMAZD+Q/cAUcGcF90S4qQTgr9/oe287KphMeGcygdkYprOYD0w+4A6ATKjGb1R8eVBUMQjQlf/a6yoGAfKciHlS6Tjg/y/RpWISYMsAeAcgP/0EIIAAAggggABOBeSHuAEEcDYgx2G8+BUs7IkjgQAcD8ixaI8J1vbD0ZAA3gDI8bjPCJb3whHhGwA5pH4PoO7wOwjYm3BRE/IjgqtaKAbsSriuAZUvoJ/h0sWvAGxluHrlWrSO45C7FrwYcEHWrm4ZYGvBg36/B3RfwJN+EwE1FLCt4FE/yx7+R3zWz/JwwcN+QwG1YkkbAPt9BY/7WZ4seN7PnzcfWgme9/P3i+dGgA38/IeLvzaCHfz8l6u/JoAt/Pynq5fL4t2Axi8ENH4h4D2E+c63nxb0OUDjFwLOJ6y5eXXi1tc9fCmgn/dz/EJv8xUATiQsvYF/cArgAr4iwEGG9SMkx6dRJuvVAjY3XDXE1GYuap7dKsAGn8bOBfpCQQMYARrASNAARoIGMAI0gJkggJmgAYwADWAkaAAjQQMYARrATBDATNAARoAGMBI0gJGgAYwADWAkaAABPCloACNBAxgBGsBI0ABGggYwAjSAmSCAmaABjAANYCRoACNBAxgBGsBI0ABmggBmgAbwjgAIIIAAAkgABBBAAAmAAAIIIAEQQAABJAACCCCABEAAAQSQAAgggAASAAEEEEACIIAAAkgABBBAAMlP/gkwAEQgHow8opxxAAAAAElFTkSuQmCC"

    .line 194
    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 195
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 197
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 198
    array-length v2, v0

    invoke-static {v0, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    invoke-static {v0, p2, p3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method public static dpToPixels(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 248
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V
    .locals 6

    .prologue
    .line 204
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 207
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 208
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 210
    invoke-static {p1, p7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 211
    packed-switch p0, :pswitch_data_0

    .line 235
    :goto_0
    if-eqz p8, :cond_0

    .line 236
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 239
    div-int/lit8 v1, p5, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 240
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p5, p6}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 242
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 244
    :cond_0
    return-void

    .line 213
    :pswitch_0
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    int-to-double v4, p6

    mul-double/2addr v2, v4

    .line 214
    double-to-int v2, v2

    invoke-static {p2, v0, v2, p6, v1}, Lcom/ooyala/android/Images;->play(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->pause(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->fullscreen(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->smallscreen(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 226
    :pswitch_4
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->next(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 229
    :pswitch_5
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->previous(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 232
    :pswitch_6
    invoke-static {p2, v0, p5, p6, v1}, Lcom/ooyala/android/Images;->closedCaptions(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 236
    :array_0
    .array-data 4
        -0x1
        0xffffff
    .end array-data
.end method

.method public static fullscreen(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 11

    .prologue
    .line 57
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 58
    int-to-float v1, p4

    .line 59
    int-to-float v0, p4

    .line 61
    if-le p2, p3, :cond_0

    .line 62
    sub-int v3, p2, p3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move v6, v0

    move v7, v1

    .line 66
    :goto_0
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v7

    sub-float v8, v0, v1

    .line 67
    int-to-float v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    sub-float v9, v0, v1

    .line 69
    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 70
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v8, v0

    add-float/2addr v0, v7

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v9, v0

    add-float/2addr v0, v6

    invoke-virtual {v2, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    invoke-virtual {v2, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    add-float v0, v7, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v9, v1

    add-float/2addr v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 75
    add-float v0, v7, v8

    add-float v1, v6, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v8, v0

    add-float/2addr v0, v7

    add-float v1, v6, v9

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 77
    add-float v0, v7, v8

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v9, v1

    add-float/2addr v1, v6

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 78
    invoke-virtual {p0, v2, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    const/high16 v0, 0x40a00000    # 5.0f

    div-float v10, v8, v0

    .line 85
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    add-float v1, v7, v10

    add-float v2, v6, v10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v8, v0

    add-float/2addr v0, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v10, v3

    sub-float v3, v0, v3

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v9, v0

    add-float/2addr v0, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    sub-float v4, v0, v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    add-float v0, v7, v8

    sub-float v1, v0, v10

    add-float v0, v6, v9

    sub-float v2, v0, v10

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v8, v0

    add-float/2addr v0, v7

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v10, v3

    add-float/2addr v3, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v9, v0

    add-float/2addr v0, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v10, v4

    add-float/2addr v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    return-void

    .line 63
    :cond_0
    if-le p3, p2, :cond_1

    .line 64
    sub-int v3, p3, p2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    move v6, v0

    move v7, v1

    goto/16 :goto_0

    :cond_1
    move v6, v0

    move v7, v1

    goto/16 :goto_0
.end method

.method public static gradientBackground(Landroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 23
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 24
    return-object v0

    .line 22
    :array_0
    .array-data 4
        -0x1000000
        -0x7feaeaeb
    .end array-data
.end method

.method public static next(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 8

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 133
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 134
    int-to-float v1, p2

    int-to-float v2, p4

    mul-float/2addr v2, v7

    sub-float v3, v1, v2

    .line 135
    int-to-float v1, p3

    int-to-float v2, p4

    mul-float/2addr v2, v7

    sub-float v4, v1, v2

    .line 136
    const/high16 v1, 0x41200000    # 10.0f

    div-float v6, v3, v1

    .line 138
    int-to-float v1, p4

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 139
    int-to-float v1, p4

    sub-float v2, v3, v6

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    int-to-float v2, p4

    div-float v5, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 141
    int-to-float v1, p4

    int-to-float v2, p4

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 142
    int-to-float v1, p4

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 144
    int-to-float v1, p4

    sub-float v2, v3, v6

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 145
    int-to-float v1, p4

    add-float/2addr v1, v3

    sub-float/2addr v1, v6

    int-to-float v2, p4

    div-float v5, v4, v7

    add-float/2addr v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 147
    int-to-float v1, p4

    sub-float v2, v3, v6

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    int-to-float v2, p4

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    int-to-float v1, p4

    sub-float v2, v3, v6

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 152
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 153
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 157
    int-to-float v0, p4

    add-float/2addr v0, v3

    div-float v1, v6, v7

    sub-float v1, v0, v1

    int-to-float v2, p4

    int-to-float v0, p4

    add-float/2addr v0, v3

    div-float v3, v6, v7

    sub-float v3, v0, v3

    int-to-float v0, p4

    add-float/2addr v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 160
    return-void
.end method

.method public static pause(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 9

    .prologue
    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v7, 0x40900000    # 4.5f

    const/high16 v6, 0x3fc00000    # 1.5f

    const/high16 v5, 0x41000000    # 8.0f

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 39
    int-to-float v1, p2

    int-to-float v2, p4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 40
    int-to-float v2, p3

    int-to-float v3, p4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 42
    int-to-float v3, p4

    mul-float v4, v6, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    int-to-float v3, p4

    mul-float v4, v8, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    int-to-float v3, p4

    mul-float v4, v8, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 45
    int-to-float v3, p4

    mul-float v4, v6, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 46
    int-to-float v3, p4

    mul-float v4, v6, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 48
    int-to-float v3, p4

    mul-float v4, v7, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 49
    int-to-float v3, p4

    const/high16 v4, 0x40d00000    # 6.5f

    mul-float/2addr v4, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 50
    int-to-float v3, p4

    const/high16 v4, 0x40d00000    # 6.5f

    mul-float/2addr v4, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    add-float/2addr v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 51
    int-to-float v3, p4

    mul-float v4, v7, v1

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v4, p4

    add-float/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 52
    int-to-float v2, p4

    mul-float/2addr v1, v7

    div-float/2addr v1, v5

    add-float/2addr v1, v2

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    return-void
.end method

.method public static play(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 29
    int-to-float v1, p4

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    int-to-float v1, p2

    int-to-float v2, p4

    sub-float/2addr v1, v2

    int-to-float v2, p4

    int-to-float v3, p3

    int-to-float v4, p4

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 32
    int-to-float v1, p4

    int-to-float v2, p3

    int-to-float v3, p4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 33
    int-to-float v1, p4

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 35
    return-void
.end method

.method public static previous(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 163
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 164
    int-to-float v0, p2

    int-to-float v1, p4

    mul-float/2addr v1, v10

    sub-float v7, v0, v1

    .line 165
    int-to-float v0, p3

    int-to-float v1, p4

    mul-float/2addr v1, v10

    sub-float v8, v0, v1

    .line 166
    const/high16 v0, 0x41200000    # 10.0f

    div-float v9, v7, v0

    .line 168
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 169
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setDither(Z)V

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    int-to-float v0, p4

    div-float v1, v9, v10

    add-float/2addr v1, v0

    int-to-float v2, p4

    int-to-float v0, p4

    div-float v3, v9, v10

    add-float/2addr v3, v0

    int-to-float v0, p4

    add-float v4, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 176
    int-to-float v0, p4

    add-float/2addr v0, v9

    int-to-float v1, p4

    div-float v2, v8, v10

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 177
    int-to-float v0, p4

    add-float/2addr v0, v9

    sub-float v1, v7, v9

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    int-to-float v1, p4

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 178
    int-to-float v0, p4

    add-float/2addr v0, v9

    sub-float v1, v7, v9

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    int-to-float v1, p4

    add-float/2addr v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    int-to-float v0, p4

    add-float/2addr v0, v9

    int-to-float v1, p4

    div-float v2, v8, v10

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    int-to-float v0, p4

    add-float/2addr v0, v9

    sub-float v1, v7, v9

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    int-to-float v1, p4

    div-float v2, v8, v10

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    int-to-float v0, p4

    add-float/2addr v0, v7

    int-to-float v1, p4

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    int-to-float v0, p4

    add-float/2addr v0, v7

    int-to-float v1, p4

    add-float/2addr v1, v8

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    int-to-float v0, p4

    add-float/2addr v0, v9

    sub-float v1, v7, v9

    div-float/2addr v1, v10

    add-float/2addr v0, v1

    int-to-float v1, p4

    div-float v2, v8, v10

    add-float/2addr v1, v2

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    invoke-virtual {p0, v6, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method public static smallscreen(Landroid/graphics/Canvas;Landroid/graphics/Paint;III)V
    .locals 18

    .prologue
    .line 94
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 95
    move/from16 v0, p4

    int-to-float v3, v0

    .line 96
    move/from16 v0, p4

    int-to-float v4, v0

    .line 98
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 99
    sub-int v2, p2, p3

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v3, v2

    .line 103
    :cond_0
    :goto_0
    move/from16 v0, p2

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v3

    sub-float v15, v2, v5

    .line 104
    move/from16 v0, p3

    int-to-float v2, v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v4

    sub-float v16, v2, v5

    .line 106
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    const/high16 v2, 0x40a00000    # 5.0f

    div-float v17, v15, v2

    .line 111
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    sub-float v5, v2, v17

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float/2addr v2, v4

    sub-float v6, v2, v17

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 114
    add-float v9, v3, v15

    add-float v10, v4, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    add-float v11, v2, v17

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float/2addr v2, v4

    add-float v12, v2, v17

    move-object/from16 v8, p0

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    sub-float/2addr v2, v5

    invoke-virtual {v14, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 118
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float/2addr v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    div-float v6, v17, v6

    sub-float/2addr v5, v6

    invoke-virtual {v14, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 120
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v16, v2

    add-float/2addr v2, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    sub-float/2addr v2, v5

    invoke-virtual {v14, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    sub-float/2addr v2, v5

    invoke-virtual {v14, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 123
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    add-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float/2addr v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    div-float v6, v17, v6

    add-float/2addr v5, v6

    invoke-virtual {v14, v2, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 125
    add-float v2, v3, v15

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v16, v5

    add-float/2addr v5, v4

    const/high16 v6, 0x40800000    # 4.0f

    div-float v6, v17, v6

    add-float/2addr v5, v6

    invoke-virtual {v14, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 126
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v17, v5

    add-float/2addr v2, v5

    add-float v5, v4, v16

    invoke-virtual {v14, v2, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 127
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v15, v2

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v17, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v16, v3

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v17, v4

    add-float/2addr v3, v4

    invoke-virtual {v14, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    return-void

    .line 100
    :cond_1
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    .line 101
    sub-int v2, p3, p2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v4, v2

    goto/16 :goto_0
.end method
