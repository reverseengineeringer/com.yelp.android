.class final Lcom/yelp/android/services/PhotoShareFormatter$1;
.super Ljava/lang/Object;
.source "PhotoShareFormatter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/PhotoShareFormatter;
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
        "Lcom/yelp/android/services/PhotoShareFormatter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/services/PhotoShareFormatter;
    .locals 2

    .prologue
    .line 54
    new-instance v1, Lcom/yelp/android/services/PhotoShareFormatter;

    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-direct {v1, v0}, Lcom/yelp/android/services/PhotoShareFormatter;-><init>(Lcom/yelp/android/serializable/Photo;)V

    return-object v1
.end method

.method public a(I)[Lcom/yelp/android/services/PhotoShareFormatter;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lcom/yelp/android/services/PhotoShareFormatter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PhotoShareFormatter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/services/PhotoShareFormatter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/yelp/android/services/PhotoShareFormatter$1;->a(I)[Lcom/yelp/android/services/PhotoShareFormatter;

    move-result-object v0

    return-object v0
.end method
