.class public Lcom/yelp/android/serializable/FromThisBusiness;
.super Lcom/yelp/android/serializable/_FromThisBusiness;
.source "FromThisBusiness.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/FromThisBusiness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/av;

    invoke-direct {v0}, Lcom/yelp/android/serializable/av;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FromThisBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHistory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->getHistory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRepresentative()Lcom/yelp/android/serializable/BusinessRepresentative;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->getRepresentative()Lcom/yelp/android/serializable/BusinessRepresentative;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShowTeaser()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->getShowTeaser()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getSpecialties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->getSpecialties()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getYearEstablished()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->getYearEstablished()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FromThisBusiness;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FromThisBusiness;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_FromThisBusiness;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FromThisBusiness;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
