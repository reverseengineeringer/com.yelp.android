.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"


# static fields
.field private static final F:[I


# instance fields
.field private A:Landroid/text/Layout;

.field private B:Landroid/text/method/TransformationMethod;

.field private C:Landroid/view/animation/Animation;

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/support/v7/internal/widget/bd;

.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Ljava/lang/CharSequence;

.field private h:Ljava/lang/CharSequence;

.field private i:Z

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Landroid/view/VelocityTracker;

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Landroid/text/TextPaint;

.field private y:Landroid/content/res/ColorStateList;

.field private z:Landroid/text/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->F:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 166
    sget v0, Lcom/yelp/android/g/b;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 182
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    .line 184
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 185
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 187
    sget-object v0, Lcom/yelp/android/g/l;->SwitchCompat:[I

    invoke-static {p1, p2, v0, p3, v2}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 189
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_android_thumb:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 190
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_track:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 191
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_android_textOn:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 192
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_android_textOff:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    .line 193
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_showText:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/internal/widget/bg;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    .line 194
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    .line 196
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    .line 198
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_switchPadding:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->d(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    .line 200
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_splitTrack:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->a(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/SwitchCompat;->f:Z

    .line 202
    sget v1, Lcom/yelp/android/g/l;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v1

    .line 204
    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/content/Context;I)V

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->E:Landroid/support/v7/internal/widget/bd;

    .line 210
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 212
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    .line 214
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    .line 217
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 219
    return-void
.end method

.method private static a(FFF)F
    .locals 1

    .prologue
    .line 1065
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 569
    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_0
    move-object v1, p1

    .line 565
    goto :goto_0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 725
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    .line 728
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SwitchCompat;F)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 2

    .prologue
    .line 670
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 671
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 672
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 673
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 674
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 709
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    .line 710
    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 711
    :goto_0
    sub-float/2addr v0, v1

    .line 713
    new-instance v2, Landroid/support/v7/widget/de;

    invoke-direct {v2, p0, v1, v0}, Landroid/support/v7/widget/de;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V

    iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    .line 719
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 720
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V

    .line 721
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 5

    .prologue
    .line 579
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    .line 581
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 582
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    sub-int/2addr v1, v2

    .line 583
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    sub-int/2addr v0, v2

    .line 584
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    add-int/2addr v2, v0

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    add-int/2addr v2, v3

    .line 586
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    add-int/2addr v3, v4

    .line 587
    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    int-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    int-to-float v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    int-to-float v0, v3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 682
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 686
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 687
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v3

    .line 689
    if-eqz v0, :cond_6

    .line 690
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 691
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 692
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->o:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_5

    .line 693
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    .line 701
    :cond_0
    :goto_1
    if-eq v1, v3, :cond_1

    .line 702
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V

    .line 703
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 705
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/view/MotionEvent;)V

    .line 706
    return-void

    :cond_2
    move v0, v2

    .line 686
    goto :goto_0

    :cond_3
    move v1, v2

    .line 693
    goto :goto_1

    :cond_4
    cmpl-float v0, v0, v6

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_1

    .line 695
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v1

    goto :goto_1

    :cond_6
    move v1, v3

    .line 698
    goto :goto_1
.end method

.method private getTargetCheckedState()Z
    .locals 2

    .prologue
    .line 731
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getThumbOffset()I
    .locals 2

    .prologue
    .line 950
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    sub-float/2addr v0, v1

    .line 955
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 953
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 3

    .prologue
    .line 959
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 961
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 962
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    .line 964
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setThumbPosition(F)V
    .locals 0

    .prologue
    .line 740
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    .line 741
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 742
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    sget-object v0, Lcom/yelp/android/g/l;->SwitchCompatTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Lcom/yelp/android/g/l;->SwitchCompatTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_1

    .line 235
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    .line 241
    :goto_0
    sget v1, Lcom/yelp/android/g/l;->SwitchCompatTextAppearance_android_textSize:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    int-to-float v2, v1

    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 246
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 250
    :cond_0
    sget v1, Lcom/yelp/android/g/l;->SwitchCompatTextAppearance_textAllCaps:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 252
    if-eqz v1, :cond_2

    .line 253
    new-instance v1, Lcom/yelp/android/j/a;

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/j/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    .line 258
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 259
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 255
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/text/method/TransformationMethod;

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    .line 823
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 824
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    .line 825
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 826
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    .line 827
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 829
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I

    move-result v0

    add-int/2addr v0, v2

    .line 832
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 833
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 836
    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    .line 843
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 847
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 848
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 850
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v0, v2

    .line 851
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    add-int/2addr v0, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    .line 852
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 854
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 855
    if-eqz v1, :cond_1

    .line 856
    invoke-static {v1, v2, v3, v0, v5}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 862
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    .line 863
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .prologue
    .line 996
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 997
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1000
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 1004
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1005
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 1007
    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 979
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 981
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 983
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 987
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 988
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 991
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 992
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 920
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 921
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 927
    :cond_0
    :goto_0
    return v0

    .line 923
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v0, v1

    .line 924
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 925
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 932
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 933
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 939
    :cond_0
    :goto_0
    return v0

    .line 935
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v0, v1

    .line 936
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 937
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getShowText()Z
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->f:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    return v0
.end method

.method public getSwitchPadding()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    return v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 2

    .prologue
    .line 1016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1017
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1019
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1023
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1027
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1029
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V

    .line 1030
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/view/animation/Animation;

    .line 1033
    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 970
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 971
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    sget-object v1, Landroid/support/v7/widget/SwitchCompat;->F:[I

    invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I

    .line 974
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 869
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 870
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 871
    if-eqz v1, :cond_4

    .line 872
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 877
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 878
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 879
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 880
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    .line 882
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 883
    if-eqz v1, :cond_0

    .line 884
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 889
    if-eqz v4, :cond_1

    .line 890
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 893
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    move-object v1, v0

    .line 894
    :goto_1
    if-eqz v1, :cond_3

    .line 895
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I

    move-result-object v0

    .line 896
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_2

    .line 897
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 899
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    iput-object v0, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 902
    if-eqz v4, :cond_6

    .line 903
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 904
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    .line 909
    :goto_2
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    .line 910
    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 911
    int-to-float v0, v0

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 912
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 915
    :cond_3
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 916
    return-void

    .line 874
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 893
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    move-object v1, v0

    goto :goto_1

    .line 906
    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v0

    goto :goto_2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1038
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1039
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1040
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .prologue
    .line 1044
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 1045
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1046
    const-class v0, Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1047
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 1048
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1049
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1050
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1051
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    :cond_0
    :goto_1
    return-void

    .line 1047
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 1053
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 768
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 774
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 786
    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 788
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x0

    .line 796
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 799
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v3

    .line 800
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    add-int/2addr v2, v3

    .line 815
    :goto_2
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->t:I

    .line 816
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->u:I

    .line 817
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->w:I

    .line 818
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->v:I

    .line 819
    return-void

    .line 777
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x0

    .line 791
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x0

    goto :goto_1

    .line 804
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    .line 806
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    add-int/2addr v2, v3

    .line 807
    goto :goto_2

    .line 810
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 811
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    sub-int v3, v2, v3

    goto :goto_2

    .line 796
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 498
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    .line 502
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/Rect;

    .line 505
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 507
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v4, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v2

    .line 509
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 516
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    if-eqz v3, :cond_4

    .line 517
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->z:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->A:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 523
    :goto_1
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    .line 526
    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 527
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 528
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 536
    :goto_2
    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 537
    iget v3, v4, Landroid/graphics/Rect;->right:I

    .line 539
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->s:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 541
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 542
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->q:I

    .line 543
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->r:I

    .line 545
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 547
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I

    move-result v1

    .line 548
    if-ge v1, v0, :cond_2

    .line 549
    invoke-static {p0}, Landroid/support/v4/view/ce;->k(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V

    .line 551
    :cond_2
    return-void

    :cond_3
    move v0, v1

    move v2, v1

    .line 512
    goto :goto_0

    :cond_4
    move v3, v1

    .line 520
    goto :goto_1

    .line 530
    :cond_5
    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 556
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 558
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 559
    :goto_0
    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 593
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 594
    packed-switch v0, :pswitch_data_0

    .line 666
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 596
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 597
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 598
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SwitchCompat;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 599
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 600
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 601
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    goto :goto_0

    .line 607
    :pswitch_2
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 613
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 614
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 615
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->k:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 617
    :cond_1
    iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 618
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 619
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 620
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->m:F

    move v0, v2

    .line 621
    goto :goto_1

    .line 627
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 628
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I

    move-result v0

    .line 629
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    sub-float v4, v3, v4

    .line 631
    if-eqz v0, :cond_4

    .line 632
    int-to-float v0, v0

    div-float v0, v4, v0

    .line 638
    :goto_2
    invoke-static {p0}, Landroid/support/v7/internal/widget/bm;->a(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 639
    neg-float v0, v0

    .line 641
    :cond_2
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    add-float/2addr v0, v4

    invoke-static {v0, v5, v1}, Landroid/support/v7/widget/SwitchCompat;->a(FFF)F

    move-result v0

    .line 642
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->p:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 643
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->l:F

    .line 644
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    :cond_3
    move v0, v2

    .line 646
    goto/16 :goto_1

    .line 636
    :cond_4
    cmpl-float v0, v4, v5

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_2

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_2

    .line 654
    :pswitch_5
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    if-ne v0, v6, :cond_6

    .line 655
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->b(Landroid/view/MotionEvent;)V

    .line 657
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v2

    .line 658
    goto/16 :goto_1

    .line 660
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->j:I

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 607
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 2

    .prologue
    .line 751
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 755
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    .line 757
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 758
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Z)V

    .line 764
    :goto_0
    return-void

    .line 761
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->a()V

    .line 762
    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setShowText(Z)V
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    if-eq v0, p1, :cond_0

    .line 478
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->i:Z

    .line 479
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 481
    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .prologue
    .line 430
    iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->f:Z

    .line 431
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 432
    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .prologue
    .line 330
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->d:I

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 332
    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .prologue
    .line 310
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->e:I

    .line 311
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 312
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 300
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V

    .line 302
    :cond_0
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 467
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->h:Ljava/lang/CharSequence;

    .line 468
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 469
    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->g:Ljava/lang/CharSequence;

    .line 453
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 454
    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    .line 399
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 400
    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->E:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .prologue
    .line 350
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->c:I

    .line 351
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 352
    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 370
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V

    .line 371
    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->E:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 380
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 747
    return-void

    .line 746
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 1011
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->a:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->b:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
