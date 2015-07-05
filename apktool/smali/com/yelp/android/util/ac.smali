.class final Lcom/yelp/android/util/ac;
.super Landroid/graphics/drawable/Drawable;
.source "StringUtils.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 779
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/util/ab;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/yelp/android/util/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 774
    iput-object p1, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    .line 775
    iget-object v0, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/util/ac;->setBounds(Landroid/graphics/Rect;)V

    .line 776
    invoke-virtual {p0}, Lcom/yelp/android/util/ac;->invalidateSelf()V

    .line 777
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 756
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 766
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/yelp/android/util/ac;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 771
    return-void
.end method
