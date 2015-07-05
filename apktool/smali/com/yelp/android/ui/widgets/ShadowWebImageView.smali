.class public Lcom/yelp/android/ui/widgets/ShadowWebImageView;
.super Lcom/yelp/android/webimageview/WebImageView;
.source "ShadowWebImageView.java"


# instance fields
.field private a:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->a:Landroid/graphics/Rect;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/webimageview/WebImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->a:Landroid/graphics/Rect;

    .line 25
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 34
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 35
    const/4 v2, 0x4

    aget v2, v0, v2

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 39
    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 40
    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 42
    const/4 v3, 0x2

    aget v3, v0, v3

    float-to-int v3, v3

    .line 43
    const/4 v4, 0x5

    aget v0, v0, v4

    float-to-int v4, v0

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/yelp/android/bf/e;->shadow_radius:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v6, Lcom/yelp/android/bf/f;->shadow_black:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .line 49
    iget-object v6, p0, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->a:Landroid/graphics/Rect;

    sub-int v7, v3, v5

    sub-int v8, v4, v5

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v5

    invoke-virtual {v6, v7, v8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ShadowWebImageView;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/WebImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    return-void
.end method
