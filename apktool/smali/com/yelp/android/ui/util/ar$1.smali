.class final Lcom/yelp/android/ui/util/ar$1;
.super Lcom/bumptech/glide/load/resource/bitmap/d;
.source "UtilUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;F)Lcom/bumptech/glide/load/resource/bitmap/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;FLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 444
    iput p2, p0, Lcom/yelp/android/ui/util/ar$1;->a:F

    iput-object p3, p0, Lcom/yelp/android/ui/util/ar$1;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/x/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 448
    iget v0, p0, Lcom/yelp/android/ui/util/ar$1;->a:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/util/ar$1;->a:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Blur radius must be between 0 and 25. Was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/util/ar$1;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ar$1;->b:Landroid/content/Context;

    iget v1, p0, Lcom/yelp/android/ui/util/ar$1;->a:F

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    const-string/jumbo v0, "BitmapBlurTransformation"

    return-object v0
.end method
