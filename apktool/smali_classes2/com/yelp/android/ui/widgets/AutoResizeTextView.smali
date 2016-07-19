.class public Lcom/yelp/android/ui/widgets/AutoResizeTextView;
.super Landroid/widget/TextView;
.source "AutoResizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;

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
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 30
    iput v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 33
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    .line 39
    iput v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 58
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 286
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 288
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 297
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

.method private a(Landroid/text/SpannableStringBuilder;I)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 311
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v0, p2, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 312
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 313
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 314
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 315
    if-ne v4, p2, :cond_0

    .line 317
    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iget v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 175
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 177
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 192
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 204
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v9

    .line 206
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    iget v3, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 209
    :goto_1
    invoke-direct {p0, v1, v2, p1, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 211
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move v8, v0

    move v0, v3

    move v3, v4

    .line 216
    :goto_2
    int-to-float v4, p2

    cmpl-float v4, v3, v4

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getMaxLines()I

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

    .line 217
    const/high16 v0, 0x40000000    # 2.0f

    sub-float v0, v8, v0

    iget v3, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 218
    invoke-direct {p0, v1, v2, p1, v4}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)Landroid/graphics/RectF;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    .line 220
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    move v8, v4

    goto :goto_2

    .line 206
    :cond_3
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    goto :goto_1

    .line 224
    :cond_4
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    cmpl-float v0, v8, v0

    if-nez v0, :cond_5

    int-to-float v0, p2

    cmpl-float v0, v3, v0

    if-lez v0, :cond_5

    .line 226
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    iget v6, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    move v3, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 236
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 239
    invoke-virtual {v0, p2}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 241
    if-gez v4, :cond_7

    .line 242
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setTextSize(F)V

    .line 272
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    iget v1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setLineSpacing(FF)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;

    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;

    invoke-interface {v0, p0, v9, v8}, Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;->a(Landroid/widget/TextView;FF)V

    .line 280
    :cond_6
    iput-boolean v7, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    goto/16 :goto_0

    .line 245
    :cond_7
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0706e1

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

    .line 260
    :cond_8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 261
    invoke-interface {v1, v7, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 262
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 263
    invoke-direct {p0, v0, v3}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(Landroid/text/SpannableStringBuilder;I)V

    .line 264
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 93
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 95
    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getCompoundPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 96
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a(II)V

    .line 98
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 99
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 117
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 120
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->b:Z

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a()V

    .line 110
    return-void
.end method

.method public setAddEllipsis(Z)V
    .locals 0

    .prologue
    .line 159
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->h:Z

    .line 160
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 84
    iput p2, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->f:F

    .line 85
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->g:F

    .line 86
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->d:F

    .line 134
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->requestLayout()V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->invalidate()V

    .line 136
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0

    .prologue
    .line 146
    iput p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->e:F

    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->requestLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->invalidate()V

    .line 149
    return-void
.end method

.method public setOnResizeListener(Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->a:Lcom/yelp/android/ui/widgets/AutoResizeTextView$a;

    .line 127
    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 67
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->c:F

    .line 76
    return-void
.end method
