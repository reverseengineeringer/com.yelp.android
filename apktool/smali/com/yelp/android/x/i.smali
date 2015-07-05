.class public Lcom/yelp/android/x/i;
.super Lcom/yelp/android/v/o;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/yelp/android/x/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/v/o",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/x/h",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/v/m",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/v/o;-><init>(Landroid/content/Context;Lcom/yelp/android/v/m;)V

    .line 41
    return-void
.end method
