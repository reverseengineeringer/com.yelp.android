.class final Lcom/yelp/android/serializable/Feedback$1;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Feedback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Feedback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 49
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Feedback;->a(Landroid/os/Parcel;)V

    .line 60
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Feedback$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Feedback$1;->a(I)[Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    return-object v0
.end method
