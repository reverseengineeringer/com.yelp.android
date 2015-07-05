.class public Lcom/yelp/android/serializable/YelpDetailedAddress;
.super Lcom/yelp/android/serializable/_YelpDetailedAddress;
.source "YelpDetailedAddress.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/yelp/android/serializable/el;

    invoke-direct {v0}, Lcom/yelp/android/serializable/el;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDetailedAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDetailedAddress;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/serializable/_YelpDetailedAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->getAddress1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->getAddress2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAddress3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->getAddress3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpDetailedAddress;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
