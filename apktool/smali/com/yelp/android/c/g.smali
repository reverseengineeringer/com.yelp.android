.class Lcom/yelp/android/c/g;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"


# direct methods
.method static a(Lcom/yelp/android/c/e;)Landroid/os/Parcelable$Creator;
    .locals 1
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
    .line 24
    new-instance v0, Lcom/yelp/android/c/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/c/f;-><init>(Lcom/yelp/android/c/e;)V

    return-object v0
.end method
