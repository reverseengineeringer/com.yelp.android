.class Lcom/yelp/android/ab/l;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/yelp/android/v/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/v/m",
        "<",
        "Lcom/yelp/android/p/a;",
        "Lcom/yelp/android/p/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/p/a;II)Lcom/yelp/android/r/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/p/a;",
            "II)",
            "Lcom/yelp/android/r/c",
            "<",
            "Lcom/yelp/android/p/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/ab/m;

    invoke-direct {v0, p1}, Lcom/yelp/android/ab/m;-><init>(Lcom/yelp/android/p/a;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/r/c;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/yelp/android/p/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ab/l;->a(Lcom/yelp/android/p/a;II)Lcom/yelp/android/r/c;

    move-result-object v0

    return-object v0
.end method
