.class Landroid/support/design/widget/g;
.super Landroid/support/design/widget/i;
.source "FloatingActionButtonEclairMr1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/g$b;,
        Landroid/support/design/widget/g$c;,
        Landroid/support/design/widget/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/support/design/widget/l;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:F

.field private k:F

.field private l:I

.field private m:Landroid/support/design/widget/o;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/m;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/i;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/g;->l:I

    .line 53
    new-instance v0, Landroid/support/design/widget/o;

    invoke-direct {v0}, Landroid/support/design/widget/o;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    .line 54
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/o;->a(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/g;->b:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/view/animation/Animation;)V

    .line 59
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/g;->c:[I

    new-instance v2, Landroid/support/design/widget/g$b;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$b;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/view/animation/Animation;)V

    .line 62
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    sget-object v1, Landroid/support/design/widget/g;->d:[I

    new-instance v2, Landroid/support/design/widget/g$c;

    invoke-direct {v2, p0, v3}, Landroid/support/design/widget/g$c;-><init>(Landroid/support/design/widget/g;Landroid/support/design/widget/g$1;)V

    invoke-direct {p0, v2}, Landroid/support/design/widget/g;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/o;->a([ILandroid/view/animation/Animation;)V

    .line 64
    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/g;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/g;->j:F

    return v0
.end method

.method private a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 208
    iget v0, p0, Landroid/support/design/widget/g;->l:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 209
    return-object p1
.end method

.method static synthetic a(Landroid/support/design/widget/g;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/support/design/widget/g;->n:Z

    return p1
.end method

.method static synthetic b(Landroid/support/design/widget/g;)F
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/support/design/widget/g;->k:F

    return v0
.end method

.method private static b(I)Landroid/content/res/ColorStateList;
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 250
    new-array v0, v1, [[I

    .line 251
    new-array v1, v1, [I

    .line 254
    sget-object v2, Landroid/support/design/widget/g;->c:[I

    aput-object v2, v0, v4

    .line 255
    aput p0, v1, v4

    .line 256
    const/4 v2, 0x1

    .line 258
    sget-object v3, Landroid/support/design/widget/g;->b:[I

    aput-object v3, v0, v2

    .line 259
    aput p0, v1, v2

    .line 260
    const/4 v2, 0x2

    .line 263
    new-array v3, v4, [I

    aput-object v3, v0, v2

    .line 264
    aput v4, v1, v2

    .line 267
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method private e()V
    .locals 5

    .prologue
    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 202
    iget-object v1, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/l;->getPadding(Landroid/graphics/Rect;)Z

    .line 203
    iget-object v1, p0, Landroid/support/design/widget/g;->f:Landroid/support/design/widget/m;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/support/design/widget/m;->a(IIII)V

    .line 204
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    invoke-virtual {v0}, Landroid/support/design/widget/o;->b()V

    .line 157
    return-void
.end method

.method a(F)V
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Landroid/support/design/widget/g;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/g;->k:F

    add-float/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/support/design/widget/l;->a(FF)V

    .line 135
    iput p1, p0, Landroid/support/design/widget/g;->j:F

    .line 136
    invoke-direct {p0}, Landroid/support/design/widget/g;->e()V

    .line 138
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Landroid/support/design/widget/g;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 129
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v0, p0, Landroid/support/design/widget/g;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/support/design/widget/g;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 119
    :cond_0
    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 124
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p2}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 73
    if-eqz p3, :cond_0

    .line 74
    iget-object v0, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p3}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 80
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 81
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 82
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 83
    iget-object v1, p0, Landroid/support/design/widget/g;->f:Landroid/support/design/widget/m;

    invoke-interface {v1}, Landroid/support/design/widget/m;->a()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 87
    invoke-static {v0}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    invoke-static {p4}, Landroid/support/design/widget/g;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v0, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 92
    if-lez p5, :cond_1

    .line 93
    invoke-virtual {p0, p5, p2}, Landroid/support/design/widget/g;->a(ILandroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/g;->i:Landroid/graphics/drawable/Drawable;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->i:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    move-object v3, v0

    .line 100
    :goto_0
    new-instance v0, Landroid/support/design/widget/l;

    iget-object v1, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Landroid/support/design/widget/g;->f:Landroid/support/design/widget/m;

    invoke-interface {v3}, Landroid/support/design/widget/m;->a()F

    move-result v3

    iget v4, p0, Landroid/support/design/widget/g;->j:F

    iget v5, p0, Landroid/support/design/widget/g;->j:F

    iget v6, p0, Landroid/support/design/widget/g;->k:F

    add-float/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/l;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;FFF)V

    iput-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    .line 106
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/l;->a(Z)V

    .line 108
    iget-object v0, p0, Landroid/support/design/widget/g;->f:Landroid/support/design/widget/m;

    iget-object v1, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    invoke-interface {v0, v1}, Landroid/support/design/widget/m;->a(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-direct {p0}, Landroid/support/design/widget/g;->e()V

    .line 111
    return-void

    .line 96
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/widget/g;->i:Landroid/graphics/drawable/Drawable;

    .line 97
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/design/widget/g;->g:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v7

    iget-object v1, p0, Landroid/support/design/widget/g;->h:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    move-object v3, v0

    goto :goto_0
.end method

.method a([I)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/support/design/widget/g;->m:Landroid/support/design/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/o;->a([I)V

    .line 152
    return-void
.end method

.method b()V
    .locals 4

    .prologue
    .line 161
    iget-boolean v0, p0, Landroid/support/design/widget/g;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$a;->design_fab_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 168
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 169
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 170
    new-instance v1, Landroid/support/design/widget/g$1;

    invoke-direct {v1, p0}, Landroid/support/design/widget/g$1;-><init>(Landroid/support/design/widget/g;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 182
    iget-object v1, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method b(F)V
    .locals 2

    .prologue
    .line 142
    iget v0, p0, Landroid/support/design/widget/g;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    if-eqz v0, :cond_0

    .line 143
    iput p1, p0, Landroid/support/design/widget/g;->k:F

    .line 144
    iget-object v0, p0, Landroid/support/design/widget/g;->a:Landroid/support/design/widget/l;

    iget v1, p0, Landroid/support/design/widget/g;->j:F

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/l;->b(F)V

    .line 145
    invoke-direct {p0}, Landroid/support/design/widget/g;->e()V

    .line 147
    :cond_0
    return-void
.end method

.method c()V
    .locals 4

    .prologue
    .line 187
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/g;->n:Z

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 191
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$a;->design_fab_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 194
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 196
    iget-object v1, p0, Landroid/support/design/widget/g;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 198
    :cond_1
    return-void
.end method
