.class public Lcom/yelp/android/ui/widgets/RoundedWebImageView;
.super Lcom/yelp/android/webimageview/WebImageView;
.source "RoundedWebImageView.java"


# static fields
.field private static b:Landroid/graphics/drawable/Drawable;

.field private static final c:F

.field private static final d:Landroid/graphics/RectF;

.field private static final e:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 90
    sget v0, Lcom/yelp/android/appdata/ao;->m:I

    int-to-float v0, v0

    sput v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->c:F

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->d:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->e:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/webimageview/WebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    sget-object v0, Lcom/yelp/android/bf/m;->RoundedWebImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->modeForValue(I)Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->setup(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    invoke-super {p0, p2}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 160
    sget-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    sget-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 162
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 165
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 168
    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->d:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 177
    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->d:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {p2, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v1

    .line 181
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 183
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    sget-object v2, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->d:Landroid/graphics/RectF;

    sget v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->c:F

    sget v4, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->c:F

    invoke-virtual {p2, v2, v3, v4, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 185
    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    .line 186
    sget-object v3, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->e:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 187
    invoke-super {p0, p2}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 189
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 190
    return-void
.end method

.method private setup(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/f;->corners:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/yelp/android/webimageview/WebImageView;->drawableStateChanged()V

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->invalidate()V

    .line 198
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    if-ne v0, v1, :cond_0

    .line 126
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 156
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    instance-of v1, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_1

    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 135
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    sget v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->c:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 136
    sget-object v1, Lcom/yelp/android/ui/widgets/aj;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->isSelected()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 147
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 138
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 141
    :pswitch_1
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 150
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 154
    :cond_4
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    if-eq p1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->invalidate()V

    .line 120
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RoundedWebImageView;->a:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    .line 121
    return-void
.end method
