.class public Landroid/support/design/widget/FloatingActionButton;
.super Landroid/widget/ImageView;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$b;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$Behavior;
    }
.end annotation


# instance fields
.field private a:Landroid/content/res/ColorStateList;

.field private b:Landroid/graphics/PorterDuff$Mode;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/support/design/widget/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    .line 87
    sget-object v0, Lcom/yelp/android/a/a$i;->FloatingActionButton:[I

    sget v1, Lcom/yelp/android/a/a$h;->Widget_Design_FloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    sget v1, Lcom/yelp/android/a/a$i;->FloatingActionButton_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_backgroundTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 92
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_backgroundTintMode:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 94
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_rippleColor:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 95
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_fabSize:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    .line 96
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_borderWidth:I

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    .line 97
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_elevation:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 98
    sget v2, Lcom/yelp/android/a/a$i;->FloatingActionButton_pressedTranslationZ:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    .line 122
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 124
    new-instance v2, Landroid/support/design/widget/j;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/j;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    .line 131
    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/yelp/android/a/a$d;->design_fab_content_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 133
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v2

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    .line 135
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/i;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 137
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0, v6}, Landroid/support/design/widget/i;->a(F)V

    .line 138
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0, v7}, Landroid/support/design/widget/i;->b(F)V

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setClickable(Z)V

    .line 141
    return-void

    .line 125
    :cond_0
    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 126
    new-instance v2, Landroid/support/design/widget/h;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/h;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    goto :goto_0

    .line 128
    :cond_1
    new-instance v2, Landroid/support/design/widget/g;

    invoke-direct {v2, p0, v0}, Landroid/support/design/widget/g;-><init>(Landroid/view/View;Landroid/support/design/widget/m;)V

    iput-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    goto :goto_0
.end method

.method private static a(II)I
    .locals 2

    .prologue
    .line 277
    .line 278
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 280
    sparse-switch v1, :sswitch_data_0

    .line 297
    :goto_0
    :sswitch_0
    return p0

    .line 290
    :sswitch_1
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :sswitch_2
    move p0, v0

    .line 294
    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .prologue
    .line 301
    sparse-switch p0, :sswitch_data_0

    .line 313
    :goto_0
    return-object p1

    .line 303
    :sswitch_0
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 305
    :sswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 307
    :sswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 309
    :sswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 311
    :sswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 301
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x9 -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0}, Landroid/support/design/widget/i;->c()V

    .line 243
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0}, Landroid/support/design/widget/i;->b()V

    .line 251
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 266
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/i;->a([I)V

    .line 267
    return-void
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method final getSizeDimension()I
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:I

    packed-switch v0, :pswitch_data_0

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$d;->design_fab_size_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    return v0

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/a/a$d;->design_fab_size_mini:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    .line 273
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0}, Landroid/support/design/widget/i;->a()V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    .line 147
    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    .line 148
    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    .line 152
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    .line 158
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 231
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    iget v4, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    iget v5, p0, Landroid/support/design/widget/FloatingActionButton;->c:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/i;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V

    .line 235
    :cond_0
    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 194
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Landroid/content/res/ColorStateList;

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(Landroid/content/res/ColorStateList;)V

    .line 197
    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 224
    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/PorterDuff$Mode;

    .line 225
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 227
    :cond_0
    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    if-eq v0, p1, :cond_0

    .line 169
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:I

    .line 170
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:Landroid/support/design/widget/i;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/i;->a(I)V

    .line 172
    :cond_0
    return-void
.end method
