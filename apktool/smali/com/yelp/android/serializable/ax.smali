.class final Lcom/yelp/android/serializable/ax;
.super Ljava/lang/Object;
.source "GiftRecipient.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/serializable/GiftRecipient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GiftRecipient;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/serializable/GiftRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/GiftRecipient;-><init>(Lcom/yelp/android/serializable/ax;)V

    .line 50
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/GiftRecipient;->readFromParcel(Landroid/os/Parcel;)V

    .line 51
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/GiftRecipient;
    .locals 1

    .prologue
    .line 45
    new-array v0, p1, [Lcom/yelp/android/serializable/GiftRecipient;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ax;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/GiftRecipient;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/ax;->a(I)[Lcom/yelp/android/serializable/GiftRecipient;

    move-result-object v0

    return-object v0
.end method
