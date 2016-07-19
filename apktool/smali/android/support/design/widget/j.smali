.class Landroid/support/design/widget/j;
.super Landroid/support/design/widget/h;
.source "FloatingActionButtonLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/RippleDrawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/m;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/h;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    .line 47
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/j;->j:Landroid/view/animation/Interpolator;

    .line 51
    :cond_0
    return-void
.end method

.method private a(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/design/widget/j;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    return-object p1
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 100
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/design/widget/j;->h:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 95
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 82
    iget-object v0, p0, Landroid/support/design/widget/j;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Landroid/support/design/widget/j;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 85
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 90
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 59
    if-eqz p3, :cond_0

    .line 60
    iget-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 64
    :cond_0
    if-lez p5, :cond_1

    .line 65
    invoke-virtual {p0, p5, p2}, Landroid/support/design/widget/j;->a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/j;->i:Landroid/graphics/drawable/Drawable;

    .line 66
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/support/design/widget/j;->i:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 72
    :goto_0
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v1, v2, v0, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Landroid/support/design/widget/j;->h:Landroid/graphics/drawable/RippleDrawable;

    .line 75
    iget-object v0, p0, Landroid/support/design/widget/j;->f:Landroid/support/design/widget/m;

    iget-object v1, p0, Landroid/support/design/widget/j;->h:Landroid/graphics/drawable/RippleDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v0, p0, Landroid/support/design/widget/j;->f:Landroid/support/design/widget/m;

    invoke-interface {v0, v4, v4, v4, v4}, Landroid/support/design/widget/m;->a(IIII)V

    .line 77
    return-void

    .line 68
    :cond_1
    iput-object v5, p0, Landroid/support/design/widget/j;->i:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Landroid/support/design/widget/j;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method a([I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method b(F)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 104
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 107
    sget-object v1, Landroid/support/design/widget/j;->b:[I

    iget-object v2, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/j;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 109
    sget-object v1, Landroid/support/design/widget/j;->c:[I

    iget-object v2, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    aput p1, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/j;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 112
    sget-object v1, Landroid/support/design/widget/j;->d:[I

    iget-object v2, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    const-string/jumbo v3, "translationZ"

    new-array v4, v5, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/design/widget/j;->a(Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 115
    iget-object v1, p0, Landroid/support/design/widget/j;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 116
    return-void
.end method

.method d()Landroid/support/design/widget/b;
    .locals 1

    .prologue
    .line 135
    new-instance v0, Landroid/support/design/widget/c;

    invoke-direct {v0}, Landroid/support/design/widget/c;-><init>()V

    return-object v0
.end method
