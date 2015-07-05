.class public Lcom/yelp/android/x/o;
.super Lcom/yelp/android/v/s;
.source "StreamUrlLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/s",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/m",
            "<",
            "Lcom/yelp/android/v/e;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/yelp/android/v/s;-><init>(Lcom/yelp/android/v/m;)V

    .line 38
    return-void
.end method
