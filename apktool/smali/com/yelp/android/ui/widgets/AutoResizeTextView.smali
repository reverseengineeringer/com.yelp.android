.class public Lcom/yelp/android/ui/widgets/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/a;

.field private b:Z

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 37
    iput v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 40
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    .line 46
    iput v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 65
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 323
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 325
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 327
    new-instance v1, Landroid/graphics/RectF;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v8, v8, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iget v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 182
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 184
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 210
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v9

    .line 212
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    iget v3, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 215
    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 217
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move v8, v0

    move v0, v3

    move v3, v4

    .line 222
    :goto_2
    int-to-float v4, p2

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getSupportMaxLines()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    int-to-float v4, p1

    cmpl-float v0, v0, v4

    if-lez v0, :cond_4

    :cond_2
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    cmpl-float v0, v8, v0

    if-lez v0, :cond_4

    .line 223
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v3, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 224
    invoke-direct {p0, v1, v2, p1, v4}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 226
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    move v8, v4

    goto :goto_2

    .line 212
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    goto :goto_1

    .line 230
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    cmpl-float v0, v8, v0

    if-nez v0, :cond_5

    int-to-float v0, p2

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    .line 232
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 235
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 238
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 240
    if-gez v4, :cond_7

    .line 241
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setTextSize(F)V

    .line 264
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    iget v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setLineSpacing(FF)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/a;

    if-eqz v0, :cond_6

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/a;

    invoke-interface {v0, p0, v9, v8}, Lcom/yelp/android/ui/widgets/a;->a(Landroid/widget/TextView;FF)V

    .line 272
    :cond_6
    iput-boolean v7, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    goto/16 :goto_0

    .line 245
    :cond_7
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f070238

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 246
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v6

    .line 247
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v3

    .line 248
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v0

    .line 249
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 252
    :goto_4
    int-to-float v10, p1

    add-float/2addr v0, v4

    cmpg-float v0, v10, v0

    if-gez v0, :cond_8

    .line 253
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v3, 0x1

    invoke-interface {v1, v6, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_4

    .line 256
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    return v0
.end method

.method public getSupportMaxLines()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 285
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getMaxLines()I

    move-result v0

    .line 317
    :cond_0
    :goto_0
    return v0

    .line 292
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mMaximum"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 293
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v3, "mMaxMode"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    .line 298
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 300
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 303
    :try_start_2
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 304
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 307
    if-eq v1, v4, :cond_0

    .line 317
    :cond_2
    :goto_2
    const/4 v0, -0x1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 295
    :goto_3
    const-string/jumbo v3, "AutoResizeTextView"

    invoke-static {v3, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    .line 310
    :catch_1
    move-exception v0

    .line 311
    const-string/jumbo v1, "AutoResizeTextView"

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2

    .line 312
    :catch_2
    move-exception v0

    .line 313
    const-string/jumbo v1, "AutoResizeTextView"

    invoke-static {v1, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_2

    .line 294
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 100
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 102
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(II)V

    .line 105
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 106
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 124
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 127
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a()V

    .line 117
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    .line 167
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 91
    iput p2, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    .line 92
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    .line 93
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 141
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->requestLayout()V

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->invalidate()V

    .line 143
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->requestLayout()V

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->invalidate()V

    .line 156
    return-void
.end method

.method public setOnResizeListener(Lcom/yelp/android/ui/widgets/a;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/a;

    .line 134
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 74
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 83
    return-void
.end method
