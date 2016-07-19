.class public Lcom/bumptech/glide/load/resource/bitmap/i;
.super Lcom/bumptech/glide/load/resource/bitmap/d;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/x/c;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Lcom/yelp/android/x/c;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/x/c;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    invoke-static {p2, p1, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/p;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
