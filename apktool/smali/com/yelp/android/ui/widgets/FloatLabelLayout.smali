.class public Lcom/yelp/android/ui/widgets/FloatLabelLayout;
.super Landroid/widget/LinearLayout;
.source "FloatLabelLayout.java"


# static fields
.field private static final a:J


# instance fields
.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    sget v0, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v0, v0

    sput-wide v0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v7, -0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    const/4 v6, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setOrientation(I)V

    .line 79
    sget-object v0, Lcom/yelp/android/b$a;->FloatLabelLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    invoke-direct {p0, v4}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(F)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 85
    const/4 v2, 0x3

    invoke-direct {p0, v5}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(F)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 89
    const/4 v3, 0x2

    invoke-direct {p0, v4}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(F)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 93
    const/4 v4, 0x4

    invoke-direct {p0, v5}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(F)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 97
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    .line 99
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    .line 100
    iget-object v5, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/support/v4/view/ai;->f(Landroid/view/View;F)V

    .line 104
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v6}, Landroid/support/v4/view/ai;->g(Landroid/view/View;F)V

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    const v3, 0x1030046

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v7, v7}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->addView(Landroid/view/View;II)V

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const v0, 0x10c000d

    :goto_0
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->e:Landroid/view/animation/Interpolator;

    .line 121
    return-void

    .line 115
    :cond_0
    const v0, 0x10a0006

    goto :goto_0
.end method

.method private a(F)I
    .locals 2

    .prologue
    .line 289
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/FloatLabelLayout;Z)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 150
    if-nez v0, :cond_0

    if-eqz v1, :cond_3

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b(Z)V

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private b(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;F)V

    .line 237
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroid/support/v4/view/ai;->e(Landroid/view/View;F)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/az;->e(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/view/az;->d(F)Landroid/support/v4/view/az;

    move-result-object v0

    sget-wide v2, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 252
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Z)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 258
    if-eqz p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    .line 260
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ai;->d(Landroid/view/View;F)V

    .line 261
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1, v2}, Landroid/support/v4/view/ai;->e(Landroid/view/View;F)V

    .line 262
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 264
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v1

    sget-wide v2, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a:J

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/az;->d(F)Landroid/support/v4/view/az;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/az;->e(F)Landroid/support/v4/view/az;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout$3;-><init>(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/az;->c()V

    .line 283
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "We already have an EditText, can only have one"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->a(Z)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/FloatLabelLayout$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout$1;-><init>(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/FloatLabelLayout$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout$2;-><init>(Lcom/yelp/android/ui/widgets/FloatLabelLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 210
    :cond_1
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .prologue
    .line 125
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 126
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V

    .line 141
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 142
    return-void

    .line 127
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 131
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    .line 132
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    instance-of v4, v1, Landroid/widget/EditText;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 134
    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->setEditText(Landroid/widget/EditText;)V

    goto :goto_0

    .line 131
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 223
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->d:Ljava/lang/CharSequence;

    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/FloatLabelLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    return-void
.end method
