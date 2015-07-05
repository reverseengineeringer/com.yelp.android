.class final Lcom/yelp/android/serializable/ar;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Feedback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    .line 58
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Feedback;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 52
    new-array v0, p1, [Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ar;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ar;->a(I)[Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    return-object v0
.end method
