.class public Lcom/yelp/android/ui/widgets/RoundedImageView;
.super Landroid/widget/ImageView;
.source "RoundedImageView.java"


# static fields
.field private static a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->a()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->a()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->a()V

    .line 62
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 28
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 29
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 37
    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_2

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/e;->corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/yelp/android/ui/widgets/RoundedImageView;->a:I

    .line 66
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/widgets/ai;

    sget v1, Lcom/yelp/android/ui/widgets/RoundedImageView;->a:I

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/widgets/ai;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 79
    :cond_1
    new-instance v1, Lcom/yelp/android/ui/widgets/ai;

    sget v2, Lcom/yelp/android/ui/widgets/RoundedImageView;->a:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/widgets/ai;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    if-nez v0, :cond_0

    .line 100
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
