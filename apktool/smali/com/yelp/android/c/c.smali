.class public Lcom/yelp/android/c/c;
.super Ljava/lang/Object;
.source "ParcelableCompat.java"


# direct methods
.method public static a(Lcom/yelp/android/c/e;)Landroid/os/Parcelable$Creator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/android/c/e",
            "<TT;>;)",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/yelp/android/c/g;->a(Lcom/yelp/android/c/e;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/c/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/c/d;-><init>(Lcom/yelp/android/c/e;)V

    goto :goto_0
.end method
