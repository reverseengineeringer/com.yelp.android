.class Lcom/yelp/android/ab/s;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)Lcom/bumptech/glide/load/engine/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/p/b;)Lcom/yelp/android/p/a;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/yelp/android/p/a;

    invoke-direct {v0, p1}, Lcom/yelp/android/p/a;-><init>(Lcom/yelp/android/p/b;)V

    return-object v0
.end method

.method public a()Lcom/yelp/android/p/e;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/yelp/android/p/e;

    invoke-direct {v0}, Lcom/yelp/android/p/e;-><init>()V

    return-object v0
.end method

.method public b()Lcom/yelp/android/q/a;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/yelp/android/q/a;

    invoke-direct {v0}, Lcom/yelp/android/q/a;-><init>()V

    return-object v0
.end method
