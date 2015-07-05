.class public Lcom/yelp/android/ac/g;
.super Ljava/lang/Object;
.source "GifBitmapWrapperStreamResourceDecoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/d",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/yelp/android/ac/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Lcom/yelp/android/ac/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ac/g;->a:Lcom/bumptech/glide/load/d;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yelp/android/ac/g;->a:Lcom/bumptech/glide/load/d;

    new-instance v1, Lcom/yelp/android/v/h;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/yelp/android/v/h;-><init>(Ljava/io/InputStream;Landroid/os/ParcelFileDescriptor;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ac/g;->a(Ljava/io/InputStream;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ac/g;->a:Lcom/bumptech/glide/load/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
