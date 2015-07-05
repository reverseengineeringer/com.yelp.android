.class Lcom/yelp/android/c/f;
.super Ljava/lang/Object;
.source "ParcelableCompatHoneycombMR2.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/c/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/c/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/c/f;->a:Lcom/yelp/android/c/e;

    .line 33
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/c/f;->a:Lcom/yelp/android/c/e;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/yelp/android/c/e;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/c/f;->a:Lcom/yelp/android/c/e;

    invoke-interface {v0, p1, p2}, Lcom/yelp/android/c/e;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/c/f;->a:Lcom/yelp/android/c/e;

    invoke-interface {v0, p1}, Lcom/yelp/android/c/e;->a(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
