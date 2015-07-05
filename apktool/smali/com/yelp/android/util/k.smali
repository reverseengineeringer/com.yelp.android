.class final Lcom/yelp/android/util/k;
.super Ljava/lang/Object;
.source "ErrorType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/util/ErrorType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/ErrorType;->valueOf(Ljava/lang/String;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 154
    new-array v0, p1, [Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/k;->a(Landroid/os/Parcel;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/k;->a(I)[Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    return-object v0
.end method
