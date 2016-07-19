.class Lcom/yelp/android/ag/g;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/yelp/android/aa/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ag/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/aa/l",
        "<",
        "Lcom/yelp/android/u/a;",
        "Lcom/yelp/android/u/a;",
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
.method public a(Lcom/yelp/android/u/a;II)Lcom/yelp/android/w/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/u/a;",
            "II)",
            "Lcom/yelp/android/w/c",
            "<",
            "Lcom/yelp/android/u/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/ag/g$a;

    invoke-direct {v0, p1}, Lcom/yelp/android/ag/g$a;-><init>(Lcom/yelp/android/u/a;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;II)Lcom/yelp/android/w/c;
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/yelp/android/u/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ag/g;->a(Lcom/yelp/android/u/a;II)Lcom/yelp/android/w/c;

    move-result-object v0

    return-object v0
.end method
