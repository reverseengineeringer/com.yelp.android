.class public Lcom/yelp/android/ac/d;
.super Lcom/yelp/android/aa/b;
.source "StreamFileLoader.java"

# interfaces
.implements Lcom/yelp/android/ac/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ac/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/aa/b",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/ac/e",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/aa/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/l",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/aa/b;-><init>(Lcom/yelp/android/aa/l;)V

    .line 41
    return-void
.end method
