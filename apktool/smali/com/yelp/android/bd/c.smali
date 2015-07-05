.class public Lcom/yelp/android/bd/c;
.super Landroid/graphics/drawable/Drawable;
.source "TextBadge.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Paint;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0, p3, v0}, Lcom/yelp/android/bd/c;->a(ILandroid/content/res/Resources;)V

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    .line 43
    iget-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 46
    iget-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/yelp/android/appdata/ao;->b(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    iget-object v1, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    const v2, 0x7f0a00f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    return-void
.end method

.method public a(ILandroid/content/res/Resources;)V
    .locals 4

    .prologue
    const/16 v3, 0x63

    .line 108
    if-le p1, v3, :cond_0

    .line 109
    const v0, 0x7f070370

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bd/c;->c:Ljava/lang/String;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bd/c;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 52
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 55
    iget-object v1, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 56
    iget-object v2, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 59
    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 60
    iget-object v2, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v4, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    .line 63
    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v4, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v1, v4

    int-to-float v3, v3

    sub-float v2, v3, v2

    div-float/2addr v2, v5

    sub-float/2addr v1, v2

    .line 65
    iget-object v2, p0, Lcom/yelp/android/bd/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 94
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 88
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/bd/c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/bd/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 100
    return-void
.end method
