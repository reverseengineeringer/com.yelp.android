.class public Lcom/yelp/android/ad/a;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lcom/yelp/android/ad/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ad/c",
        "<",
        "Lcom/yelp/android/ac/a;",
        "Lcom/yelp/android/z/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ad/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ad/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ad/c",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/m;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/ad/a;->a:Lcom/yelp/android/ad/c;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/ac/a;",
            ">;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/z/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ac/a;

    .line 27
    invoke-virtual {v0}, Lcom/yelp/android/ac/a;->b()Lcom/bumptech/glide/load/engine/t;

    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ad/a;->a:Lcom/yelp/android/ad/c;

    invoke-interface {v0, v1}, Lcom/yelp/android/ad/c;->a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ac/a;->c()Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
