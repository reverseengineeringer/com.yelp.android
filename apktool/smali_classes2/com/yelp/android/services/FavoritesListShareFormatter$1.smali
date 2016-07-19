.class final Lcom/yelp/android/services/FavoritesListShareFormatter$1;
.super Ljava/lang/Object;
.source "FavoritesListShareFormatter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/FavoritesListShareFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/services/FavoritesListShareFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/services/FavoritesListShareFormatter;
    .locals 2

    .prologue
    .line 73
    new-instance v1, Lcom/yelp/android/services/FavoritesListShareFormatter;

    const-class v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FavoritesList;

    invoke-direct {v1, v0}, Lcom/yelp/android/services/FavoritesListShareFormatter;-><init>(Lcom/yelp/android/serializable/FavoritesList;)V

    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/services/FavoritesListShareFormatter;
    .locals 1

    .prologue
    .line 80
    new-array v0, p1, [Lcom/yelp/android/services/FavoritesListShareFormatter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/FavoritesListShareFormatter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/services/FavoritesListShareFormatter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/FavoritesListShareFormatter$1;->a(I)[Lcom/yelp/android/services/FavoritesListShareFormatter;

    move-result-object v0

    return-object v0
.end method
