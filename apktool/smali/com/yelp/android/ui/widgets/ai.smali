.class Lcom/yelp/android/ui/widgets/ai;
.super Landroid/graphics/drawable/Drawable;
.source "RoundedImageView.java"


# instance fields
.field private final a:I

.field private final b:Landroid/graphics/BitmapShader;

.field private final c:Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/RectF;

.field private final f:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->c:Landroid/graphics/Matrix;

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    .line 113
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->e:Landroid/graphics/RectF;

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->f:Landroid/graphics/RectF;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->f:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    iput p2, p0, Lcom/yelp/android/ui/widgets/ai;->a:I

    .line 119
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->b:Landroid/graphics/BitmapShader;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->b:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ai;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ai;->b:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->e:Landroid/graphics/RectF;

    iget v1, p0, Lcom/yelp/android/ui/widgets/ai;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yelp/android/ui/widgets/ai;->a:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 139
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->e:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->c:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ai;->f:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/ai;->e:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->b:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/ai;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 134
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 149
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ai;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 154
    return-void
.end method
