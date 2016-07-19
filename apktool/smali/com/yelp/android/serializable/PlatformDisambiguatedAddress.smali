.class public Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;
.super Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;
.source "PlatformDisambiguatedAddress.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 19
    instance-of v0, p1, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PlatformDisambiguatedAddress;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
