.class public Lcom/yelp/android/ac/g;
.super Lcom/yelp/android/aa/p;
.source "StreamStringLoader.java"

# interfaces
.implements Lcom/yelp/android/ac/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ac/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/aa/p",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/yelp/android/ac/e",
        "<",
        "Ljava/lang/String;",
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
    invoke-direct {p0, p1}, Lcom/yelp/android/aa/p;-><init>(Lcom/yelp/android/aa/l;)V

    .line 41
    return-void
.end method
