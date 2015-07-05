.class public abstract Lcom/yelp/android/ui/map/j;
.super Ljava/lang/Object;
.source "NumberedIconMaker.java"

# interfaces
.implements Lcom/yelp/android/ui/map/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yelp/android/serializable/by;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/map/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 34
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 35
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 37
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lcom/yelp/android/appdata/ao;->b(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    const v2, 0x7f020286

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/map/j;->a:Landroid/graphics/Bitmap;

    .line 40
    iput-object v0, p0, Lcom/yelp/android/ui/map/j;->b:Landroid/text/TextPaint;

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/by;)Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/android/gms/maps/model/BitmapDescriptor;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/map/j;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/map/j;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 52
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/map/j;->b(Lcom/yelp/android/serializable/by;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    iget-object v5, p0, Lcom/yelp/android/ui/map/j;->b:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 55
    int-to-float v1, v1

    sub-float/2addr v1, v5

    int-to-float v2, v2

    iget-object v5, p0, Lcom/yelp/android/ui/map/j;->b:Landroid/text/TextPaint;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b(Lcom/yelp/android/serializable/by;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
