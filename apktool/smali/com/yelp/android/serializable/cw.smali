.class final Lcom/yelp/android/serializable/cw;
.super Ljava/lang/Object;
.source "Royal.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/Royal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Royal;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/serializable/Royal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/serializable/Royal;-><init>(Landroid/os/Parcel;Lcom/yelp/android/serializable/cw;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Royal;
    .locals 1

    .prologue
    .line 85
    new-array v0, p1, [Lcom/yelp/android/serializable/Royal;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cw;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Royal;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/cw;->a(I)[Lcom/yelp/android/serializable/Royal;

    move-result-object v0

    return-object v0
.end method