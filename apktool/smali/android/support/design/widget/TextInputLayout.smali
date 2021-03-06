.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Landroid/graphics/Paint;

.field private d:Z

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/content/res/ColorStateList;

.field private final i:Landroid/support/design/widget/d;

.field private j:Z

.field private k:Landroid/support/design/widget/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/support/design/widget/d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    .line 89
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 90
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 91
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 93
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(Landroid/view/animation/Interpolator;)V

    .line 94
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->b(Landroid/view/animation/Interpolator;)V

    .line 95
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->d(I)V

    .line 97
    sget-object v0, Lcom/yelp/android/a/a$i;->TextInputLayout:[I

    sget v1, Lcom/yelp/android/a/a$h;->Widget_Design_TextInputLayout:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_android_hint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    .line 100
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_hintAnimationEnabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 103
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    .line 108
    :cond_0
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 110
    if-eq v1, v4, :cond_1

    .line 111
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_hintTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 115
    :cond_1
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_errorTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    .line 116
    sget v1, Lcom/yelp/android/a/a$i;->TextInputLayout_errorEnabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 117
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 121
    invoke-static {p0}, Landroid/support/v4/view/ai;->e(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_2

    .line 124
    invoke-static {p0, v3}, Landroid/support/v4/view/ai;->c(Landroid/view/View;I)V

    .line 128
    :cond_2
    new-instance v0, Landroid/support/design/widget/TextInputLayout$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TextInputLayout$a;-><init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 129
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/d;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    .line 202
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    .line 207
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->d()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 211
    return-object p1

    .line 202
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->e()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    if-nez v0, :cond_1

    .line 488
    invoke-static {}, Landroid/support/design/widget/v;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    .line 489
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/a;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/view/animation/Interpolator;)V

    .line 490
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(I)V

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$4;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$c;)V

    .line 498
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v1}, Landroid/support/design/widget/d;->e()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/p;->a(FF)V

    .line 499
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->a()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 216
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v1

    const v2, 0x101009c

    invoke-static {v1, v2}, Landroid/support/design/widget/TextInputLayout;->a([II)Z

    move-result v2

    .line 218
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/design/widget/d;->b(I)V

    .line 220
    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/design/widget/d;->a(I)V

    .line 225
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->b(Z)V

    .line 232
    :goto_2
    return-void

    .line 215
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_1

    .line 230
    :cond_4
    invoke-direct {p0, p1}, Landroid/support/design/widget/TextInputLayout;->c(Z)V

    goto :goto_2
.end method

.method private static a([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 549
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 550
    if-ne v3, p1, :cond_1

    .line 551
    const/4 v0, 0x1

    .line 554
    :cond_0
    return v0

    .line 549
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 462
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->e()V

    .line 465
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_1

    .line 466
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->b(F)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->k:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->e()V

    .line 476
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    if-eqz v0, :cond_1

    .line 477
    invoke-direct {p0, v1}, Landroid/support/design/widget/TextInputLayout;->a(F)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->b(F)V

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 153
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    .line 159
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(Landroid/graphics/Typeface;)V

    .line 160
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(F)V

    .line 161
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getGravity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->c(I)V

    .line 164
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    new-instance v1, Landroid/support/design/widget/TextInputLayout$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->g:Landroid/content/res/ColorStateList;

    .line 183
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 189
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ai;->m(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ai;->n(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v3

    invoke-static {v0, v1, v4, v2, v3}, Landroid/support/v4/view/ai;->b(Landroid/view/View;IIII)V

    .line 196
    :cond_3
    invoke-direct {p0, v4}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 133
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 134
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p3}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 430
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Landroid/graphics/Canvas;)V

    .line 431
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 400
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 435
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 437
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    .line 439
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getRight()I

    move-result v1

    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 441
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/d;->a(IIII)V

    .line 447
    iget-object v2, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/support/design/widget/d;->b(IIII)V

    .line 450
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->g()V

    .line 452
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 1

    .prologue
    .line 456
    invoke-super {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 458
    invoke-static {p0}, Landroid/support/v4/view/ai;->D(Landroid/view/View;)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 459
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    .line 338
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Z

    if-nez v0, :cond_1

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 347
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 348
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 349
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 363
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 385
    :cond_2
    :goto_1
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 367
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Landroid/support/design/widget/TextInputLayout$3;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 379
    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/o;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/o;

    move-result-object v0

    .line 380
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    sget v2, Lcom/yelp/android/a/a$e;->abc_edit_text_material:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/o;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method public setErrorEnabled(Z)V
    .locals 5

    .prologue
    .line 291
    iget-boolean v0, p0, Landroid/support/design/widget/TextInputLayout;->d:Z

    if-eq v0, p1, :cond_2

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/az;->b()V

    .line 296
    :cond_0
    if-eqz p1, :cond_3

    .line 297
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    .line 298
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Landroid/support/design/widget/TextInputLayout;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 299
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;)V

    .line 302
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v1}, Landroid/support/v4/view/ai;->m(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-static {v3}, Landroid/support/v4/view/ai;->n(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ai;->b(Landroid/view/View;IIII)V

    .line 311
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->d:Z

    .line 313
    :cond_2
    return-void

    .line 308
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->removeView(Landroid/view/View;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->e:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 248
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout;->b:Ljava/lang/CharSequence;

    .line 249
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Ljava/lang/CharSequence;)V

    .line 251
    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 252
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 0

    .prologue
    .line 424
    iput-boolean p1, p0, Landroid/support/design/widget/TextInputLayout;->j:Z

    .line 425
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->e(I)V

    .line 271
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->i()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/TextInputLayout;->h:Landroid/content/res/ColorStateList;

    .line 273
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Z)V

    .line 277
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/design/widget/TextInputLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 278
    iget-object v1, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestLayout()V

    .line 281
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout;->i:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Landroid/graphics/Typeface;)V

    .line 149
    return-void
.end method
