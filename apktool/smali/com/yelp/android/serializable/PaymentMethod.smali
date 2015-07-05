.class public Lcom/yelp/android/serializable/PaymentMethod;
.super Lcom/yelp/android/serializable/_PaymentMethod;
.source "PaymentMethod.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/bs;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bs;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PaymentMethod;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PaymentMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PaymentMethod;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 14
    instance-of v1, p1, Lcom/yelp/android/serializable/PaymentMethod;

    if-nez v1, :cond_1

    .line 18
    :cond_0
    :goto_0
    return v0

    .line 17
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/PaymentMethod;

    .line 18
    iget-object v1, p0, Lcom/yelp/android/serializable/PaymentMethod;->mId:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/PaymentMethod;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/PaymentMethod;->mDescription:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/PaymentMethod;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/PaymentMethod;->mImageUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/PaymentMethod;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PaymentMethod;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PaymentMethod;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PaymentMethod;->getImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PaymentMethod;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PaymentMethod;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PaymentMethod;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PaymentMethod;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
