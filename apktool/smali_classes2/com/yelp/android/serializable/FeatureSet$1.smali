.class final Lcom/yelp/android/serializable/FeatureSet$1;
.super Ljava/lang/Object;
.source "FeatureSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/FeatureSet;
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
        "Lcom/yelp/android/serializable/FeatureSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeatureSet;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/FeatureSet;
    .locals 1

    .prologue
    .line 42
    new-array v0, p1, [Lcom/yelp/android/serializable/FeatureSet;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeatureSet$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/FeatureSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/FeatureSet$1;->a(I)[Lcom/yelp/android/serializable/FeatureSet;

    move-result-object v0

    return-object v0
.end method
