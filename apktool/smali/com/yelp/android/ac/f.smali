.class public Lcom/yelp/android/ac/f;
.super Lcom/yelp/android/aa/n;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/yelp/android/ac/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ac/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/aa/n",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/ac/e",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/aa/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/aa/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/aa/n;-><init>(Landroid/content/Context;Lcom/yelp/android/aa/l;)V

    .line 41
    return-void
.end method
