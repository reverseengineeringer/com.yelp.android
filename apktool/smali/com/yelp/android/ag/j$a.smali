.class Lcom/yelp/android/ag/j$a;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ag/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;)Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/yelp/android/x/c;",
            ")",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;)V

    return-object v0
.end method

.method public a(Lcom/yelp/android/u/a$a;)Lcom/yelp/android/u/a;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lcom/yelp/android/u/a;

    invoke-direct {v0, p1}, Lcom/yelp/android/u/a;-><init>(Lcom/yelp/android/u/a$a;)V

    return-object v0
.end method

.method public a()Lcom/yelp/android/u/d;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/yelp/android/u/d;

    invoke-direct {v0}, Lcom/yelp/android/u/d;-><init>()V

    return-object v0
.end method

.method public b()Lcom/yelp/android/v/a;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/yelp/android/v/a;

    invoke-direct {v0}, Lcom/yelp/android/v/a;-><init>()V

    return-object v0
.end method
