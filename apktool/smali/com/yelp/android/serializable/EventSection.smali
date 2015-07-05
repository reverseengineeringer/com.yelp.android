.class public Lcom/yelp/android/serializable/EventSection;
.super Lcom/yelp/android/serializable/_EventSection;
.source "EventSection.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/EventSection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/am;

    invoke-direct {v0}, Lcom/yelp/android/serializable/am;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/EventSection;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventSection;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinesses()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getBusinesses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEvents()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getEvents()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItemsToShow()[I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getItemsToShow()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTotal()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getTotal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUsers()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventSection;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventSection;->readFromJson(Lorg/json/JSONObject;)V

    .line 35
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "businesses"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/Event;->buildEventsFromJSONResponse(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/EventSection;->mEvents:Ljava/util/List;

    .line 37
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventSection;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_EventSection;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
