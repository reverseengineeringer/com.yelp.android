.class Lcom/yelp/android/ag/h;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Lcom/yelp/android/u/a;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/x/c;


# direct methods
.method public constructor <init>(Lcom/yelp/android/x/c;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yelp/android/ag/h;->a:Lcom/yelp/android/x/c;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/u/a;II)Lcom/bumptech/glide/load/engine/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/u/a;",
            "II)",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/yelp/android/u/a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/yelp/android/ag/h;->a:Lcom/yelp/android/x/c;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/c;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;)Lcom/bumptech/glide/load/resource/bitmap/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    check-cast p1, Lcom/yelp/android/u/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ag/h;->a(Lcom/yelp/android/u/a;II)Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method
