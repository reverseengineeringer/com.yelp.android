.class public Lcom/yelp/android/x/f;
.super Lcom/yelp/android/v/b;
.source "StreamFileLoader.java"

# interfaces
.implements Lcom/yelp/android/x/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/b",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/x/h",
        "<",
        "Ljava/io/File;",
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
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/v/b;-><init>(Lcom/yelp/android/v/m;)V

    .line 41
    return-void
.end method
