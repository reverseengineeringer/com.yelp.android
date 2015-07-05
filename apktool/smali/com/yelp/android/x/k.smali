.class public Lcom/yelp/android/x/k;
.super Lcom/yelp/android/v/q;
.source "StreamStringLoader.java"

# interfaces
.implements Lcom/yelp/android/x/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/q",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/x/h",
        "<",
        "Ljava/lang/String;",
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
    invoke-direct {p0, p1}, Lcom/yelp/android/v/q;-><init>(Lcom/yelp/android/v/m;)V

    .line 41
    return-void
.end method
