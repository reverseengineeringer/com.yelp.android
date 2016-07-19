.class final Landroid/support/design/widget/d;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final a:Z

.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:Z

.field private final F:Landroid/text/TextPaint;

.field private G:Landroid/view/animation/Interpolator;

.field private H:Landroid/view/animation/Interpolator;

.field private final c:Landroid/view/View;

.field private d:Z

.field private e:F

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/RectF;

.field private i:I

.field private j:I

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/lang/CharSequence;

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/Bitmap;

.field private z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/design/widget/d;->a:Z

    .line 47
    const/4 v0, 0x0

    sput-object v0, Landroid/support/design/widget/d;->b:Landroid/graphics/Paint;

    .line 48
    sget-object v0, Landroid/support/design/widget/d;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Landroid/support/design/widget/d;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    sget-object v0, Landroid/support/design/widget/d;->b:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    :cond_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    const/high16 v0, 0x41700000    # 15.0f

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Landroid/support/design/widget/d;->i:I

    .line 63
    iput v1, p0, Landroid/support/design/widget/d;->j:I

    .line 64
    iput v0, p0, Landroid/support/design/widget/d;->k:F

    .line 65
    iput v0, p0, Landroid/support/design/widget/d;->l:F

    .line 97
    iput-object p1, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    .line 99
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    .line 100
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    .line 105
    return-void
.end method

.method private static a(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    .prologue
    .line 569
    if-eqz p3, :cond_0

    .line 570
    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    .line 572
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/support/design/widget/a;->a(FFF)F

    move-result v0

    return v0
.end method

.method private static a(IIF)I
    .locals 5

    .prologue
    .line 559
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 560
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 561
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 562
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 563
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v0, v4

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    .line 564
    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private static a(FF)Z
    .locals 2

    .prologue
    .line 541
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 413
    iget-object v2, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ai;->h(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 415
    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/f/e;->d:Lcom/yelp/android/f/d;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/yelp/android/f/d;->a(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_1
    sget-object v0, Lcom/yelp/android/f/e;->c:Lcom/yelp/android/f/d;

    goto :goto_1
.end method

.method private c(F)V
    .locals 4

    .prologue
    .line 354
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 356
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget v1, p0, Landroid/support/design/widget/d;->o:F

    iget v2, p0, Landroid/support/design/widget/d;->p:F

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 358
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 360
    iget-object v0, p0, Landroid/support/design/widget/d;->h:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 362
    return-void
.end method

.method private d(F)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Landroid/support/design/widget/d;->u:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 471
    :goto_0
    return-void

    .line 427
    :cond_0
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    invoke-static {p1, v0}, Landroid/support/design/widget/d;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 428
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 429
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    .line 430
    iput v6, p0, Landroid/support/design/widget/d;->C:F

    move v4, v3

    move v3, v0

    .line 444
    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_b

    .line 445
    iget v0, p0, Landroid/support/design/widget/d;->D:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/d;->E:Z

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    .line 446
    :goto_2
    iput v3, p0, Landroid/support/design/widget/d;->D:F

    .line 447
    iput-boolean v1, p0, Landroid/support/design/widget/d;->E:Z

    .line 450
    :goto_3
    iget-object v3, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_5

    .line 451
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/d;->D:F

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 454
    iget-object v0, p0, Landroid/support/design/widget/d;->u:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    iget-object v3, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 457
    :cond_3
    iput-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    .line 459
    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/d;->w:Z

    .line 463
    :cond_5
    sget-boolean v0, Landroid/support/design/widget/d;->a:Z

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/design/widget/d;->C:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_a

    :goto_4
    iput-boolean v2, p0, Landroid/support/design/widget/d;->x:Z

    .line 465
    iget-boolean v0, p0, Landroid/support/design/widget/d;->x:Z

    if-eqz v0, :cond_6

    .line 467
    invoke-direct {p0}, Landroid/support/design/widget/d;->l()V

    .line 470
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    goto :goto_0

    .line 432
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    .line 433
    iget v0, p0, Landroid/support/design/widget/d;->k:F

    .line 435
    iget v4, p0, Landroid/support/design/widget/d;->k:F

    invoke-static {p1, v4}, Landroid/support/design/widget/d;->a(FF)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 437
    iput v6, p0, Landroid/support/design/widget/d;->C:F

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 440
    :cond_8
    iget v4, p0, Landroid/support/design/widget/d;->k:F

    div-float v4, p1, v4

    iput v4, p0, Landroid/support/design/widget/d;->C:F

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_9
    move v0, v1

    .line 445
    goto :goto_2

    :cond_a
    move v2, v1

    .line 463
    goto :goto_4

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method private j()V
    .locals 4

    .prologue
    .line 261
    iget v0, p0, Landroid/support/design/widget/d;->e:F

    .line 263
    invoke-direct {p0, v0}, Landroid/support/design/widget/d;->c(F)V

    .line 264
    iget v1, p0, Landroid/support/design/widget/d;->q:F

    iget v2, p0, Landroid/support/design/widget/d;->r:F

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->s:F

    .line 266
    iget v1, p0, Landroid/support/design/widget/d;->o:F

    iget v2, p0, Landroid/support/design/widget/d;->p:F

    iget-object v3, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->t:F

    .line 269
    iget v1, p0, Landroid/support/design/widget/d;->k:F

    iget v2, p0, Landroid/support/design/widget/d;->l:F

    iget-object v3, p0, Landroid/support/design/widget/d;->H:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, v0, v3}, Landroid/support/design/widget/d;->a(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/widget/d;->d(F)V

    .line 272
    iget v1, p0, Landroid/support/design/widget/d;->n:I

    iget v2, p0, Landroid/support/design/widget/d;->m:I

    if-eq v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/design/widget/d;->m:I

    iget v3, p0, Landroid/support/design/widget/d;->n:I

    invoke-static {v2, v3, v0}, Landroid/support/design/widget/d;->a(IIF)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 280
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 281
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->n:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    .line 285
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/design/widget/d;->l:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 286
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v0, v2, v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 288
    :goto_0
    iget v5, p0, Landroid/support/design/widget/d;->j:I

    iget-boolean v2, p0, Landroid/support/design/widget/d;->w:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Landroid/support/v4/view/e;->a(II)I

    move-result v2

    .line 290
    and-int/lit8 v5, v2, 0x70

    sparse-switch v5, :sswitch_data_0

    .line 299
    iget-object v5, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 300
    div-float/2addr v5, v7

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 301
    iget-object v6, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iput v5, p0, Landroid/support/design/widget/d;->p:F

    .line 304
    :goto_2
    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_1

    .line 313
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    .line 317
    :goto_3
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v2, p0, Landroid/support/design/widget/d;->k:F

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 318
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    .line 320
    :cond_0
    iget v0, p0, Landroid/support/design/widget/d;->i:I

    iget-boolean v2, p0, Landroid/support/design/widget/d;->w:Z

    if-eqz v2, :cond_3

    :goto_4
    invoke-static {v0, v3}, Landroid/support/v4/view/e;->a(II)I

    move-result v0

    .line 322
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_2

    .line 331
    iget-object v2, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 332
    div-float/2addr v2, v7

    iget-object v3, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    .line 333
    iget-object v3, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    .line 336
    :goto_5
    and-int/lit8 v0, v0, 0x7

    sparse-switch v0, :sswitch_data_3

    .line 345
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    .line 350
    :goto_6
    invoke-direct {p0}, Landroid/support/design/widget/d;->m()V

    .line 351
    return-void

    :cond_1
    move v0, v1

    .line 286
    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 288
    goto/16 :goto_1

    .line 292
    :sswitch_0
    iget-object v5, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/d;->p:F

    goto :goto_2

    .line 295
    :sswitch_1
    iget-object v5, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Landroid/support/design/widget/d;->p:F

    goto :goto_2

    .line 306
    :sswitch_2
    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v7

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    goto :goto_3

    .line 309
    :sswitch_3
    iget-object v2, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/d;->r:F

    goto/16 :goto_3

    :cond_3
    move v3, v4

    .line 320
    goto :goto_4

    .line 324
    :sswitch_4
    iget-object v2, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    goto :goto_5

    .line 327
    :sswitch_5
    iget-object v2, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/support/design/widget/d;->o:F

    goto :goto_5

    .line 338
    :sswitch_6
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    goto :goto_6

    .line 341
    :sswitch_7
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/d;->q:F

    goto :goto_6

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 304
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch

    .line 322
    :sswitch_data_2
    .sparse-switch
        0x30 -> :sswitch_5
        0x50 -> :sswitch_4
    .end sparse-switch

    .line 336
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
    .end sparse-switch
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->k:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 480
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v1, p0, Landroid/support/design/widget/d;->m:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 481
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->A:F

    .line 482
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/d;->B:F

    .line 484
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget-object v1, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 485
    iget v1, p0, Landroid/support/design/widget/d;->B:F

    iget v3, p0, Landroid/support/design/widget/d;->A:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 487
    if-gtz v0, :cond_2

    if-lez v5, :cond_0

    .line 491
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    .line 493
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 494
    iget-object v1, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 496
    iget-object v0, p0, Landroid/support/design/widget/d;->z:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/d;->z:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    .line 534
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/d;->d:Z

    .line 164
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(F)V
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Landroid/support/design/widget/d;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 119
    iput p1, p0, Landroid/support/design/widget/d;->k:F

    .line 120
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 122
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Landroid/support/design/widget/d;->n:I

    if-eq v0, p1, :cond_0

    .line 133
    iput p1, p0, Landroid/support/design/widget/d;->n:I

    .line 134
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 136
    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/d;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/design/widget/d;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/d;->E:Z

    .line 149
    invoke-virtual {p0}, Landroid/support/design/widget/d;->a()V

    .line 151
    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 367
    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/d;->d:Z

    if-eqz v0, :cond_2

    .line 368
    iget v4, p0, Landroid/support/design/widget/d;->s:F

    .line 369
    iget v5, p0, Landroid/support/design/widget/d;->t:F

    .line 371
    iget-boolean v0, p0, Landroid/support/design/widget/d;->x:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 377
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    iget v3, p0, Landroid/support/design/widget/d;->D:F

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 379
    if-eqz v0, :cond_4

    .line 380
    iget v1, p0, Landroid/support/design/widget/d;->A:F

    iget v3, p0, Landroid/support/design/widget/d;->C:F

    mul-float/2addr v1, v3

    .line 381
    iget v3, p0, Landroid/support/design/widget/d;->B:F

    iget v6, p0, Landroid/support/design/widget/d;->C:F

    mul-float/2addr v3, v6

    .line 393
    :goto_1
    if-eqz v0, :cond_0

    .line 394
    add-float/2addr v5, v1

    .line 397
    :cond_0
    iget v1, p0, Landroid/support/design/widget/d;->C:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    .line 398
    iget v1, p0, Landroid/support/design/widget/d;->C:F

    iget v3, p0, Landroid/support/design/widget/d;->C:F

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 401
    :cond_1
    if-eqz v0, :cond_5

    .line 403
    iget-object v0, p0, Landroid/support/design/widget/d;->y:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/design/widget/d;->z:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 409
    :cond_2
    :goto_2
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 410
    return-void

    :cond_3
    move v0, v2

    .line 371
    goto :goto_0

    .line 383
    :cond_4
    iget-object v1, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    iget v3, p0, Landroid/support/design/widget/d;->C:F

    mul-float/2addr v1, v3

    .line 384
    iget-object v3, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget v6, p0, Landroid/support/design/widget/d;->C:F

    mul-float/2addr v3, v6

    goto :goto_1

    .line 405
    :cond_5
    iget-object v1, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v6, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method a(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 222
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 223
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 224
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 226
    :cond_1
    return-void
.end method

.method a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Landroid/support/design/widget/d;->H:Landroid/view/animation/Interpolator;

    .line 109
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 110
    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 517
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->u:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/d;->u:Ljava/lang/CharSequence;

    .line 519
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/d;->v:Ljava/lang/CharSequence;

    .line 520
    invoke-direct {p0}, Landroid/support/design/widget/d;->m()V

    .line 521
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 523
    :cond_1
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Landroid/support/design/widget/d;->i:I

    return v0
.end method

.method b(F)V
    .locals 2

    .prologue
    .line 240
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/support/design/widget/k;->a(FFF)F

    move-result v0

    .line 242
    iget v1, p0, Landroid/support/design/widget/d;->e:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 243
    iput v0, p0, Landroid/support/design/widget/d;->e:F

    .line 244
    invoke-direct {p0}, Landroid/support/design/widget/d;->j()V

    .line 246
    :cond_0
    return-void
.end method

.method b(I)V
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Landroid/support/design/widget/d;->m:I

    if-eq v0, p1, :cond_0

    .line 140
    iput p1, p0, Landroid/support/design/widget/d;->m:I

    .line 141
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 143
    :cond_0
    return-void
.end method

.method b(IIII)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/design/widget/d;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/design/widget/d;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/d;->E:Z

    .line 157
    invoke-virtual {p0}, Landroid/support/design/widget/d;->a()V

    .line 159
    :cond_0
    return-void
.end method

.method b(Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Landroid/support/design/widget/d;->G:Landroid/view/animation/Interpolator;

    .line 114
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 115
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Landroid/support/design/widget/d;->j:I

    return v0
.end method

.method c(I)V
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Landroid/support/design/widget/d;->i:I

    if-eq v0, p1, :cond_0

    .line 168
    iput p1, p0, Landroid/support/design/widget/d;->i:I

    .line 169
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 171
    :cond_0
    return-void
.end method

.method d()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/support/design/widget/d;->F:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method d(I)V
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Landroid/support/design/widget/d;->j:I

    if-eq v0, p1, :cond_0

    .line 179
    iput p1, p0, Landroid/support/design/widget/d;->j:I

    .line 180
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 182
    :cond_0
    return-void
.end method

.method e()F
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/support/design/widget/d;->e:F

    return v0
.end method

.method e(I)V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/a/a$i;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 190
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textColor:I

    iget v2, p0, Landroid/support/design/widget/d;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->n:I

    .line 194
    :cond_0
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/d;->l:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/d;->l:F

    .line 198
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 201
    return-void
.end method

.method f()F
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Landroid/support/design/widget/d;->l:F

    return v0
.end method

.method f(I)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/a/a$i;->TextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 205
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textColor:I

    iget v2, p0, Landroid/support/design/widget/d;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/d;->m:I

    .line 209
    :cond_0
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    sget v1, Lcom/yelp/android/a/a$i;->TextAppearance_android_textSize:I

    iget v2, p0, Landroid/support/design/widget/d;->k:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/d;->k:F

    .line 213
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-virtual {p0}, Landroid/support/design/widget/d;->g()V

    .line 216
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    invoke-direct {p0}, Landroid/support/design/widget/d;->k()V

    .line 507
    invoke-direct {p0}, Landroid/support/design/widget/d;->j()V

    .line 509
    :cond_0
    return-void
.end method

.method h()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/design/widget/d;->u:Ljava/lang/CharSequence;

    return-object v0
.end method

.method i()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Landroid/support/design/widget/d;->n:I

    return v0
.end method
