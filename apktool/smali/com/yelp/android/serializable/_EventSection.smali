.class abstract Lcom/yelp/android/serializable/_EventSection;
.super Ljava/lang/Object;
.source "_EventSection.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlias:Ljava/lang/String;

.field protected mBusinesses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation
.end field

.field protected mHeader:Ljava/lang/String;

.field protected mItemsToShow:[I

.field protected mTotal:I

.field protected mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventSection;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    .line 29
    iput-object p3, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/yelp/android/serializable/_EventSection;->mAlias:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/yelp/android/serializable/_EventSection;->mHeader:Ljava/lang/String;

    .line 32
    iput p6, p0, Lcom/yelp/android/serializable/_EventSection;->mTotal:I

    .line 33
    iput-object p7, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getItemsToShow()[I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/yelp/android/serializable/_EventSection;->mTotal:I

    return v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 89
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    .line 94
    :goto_0
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 95
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    .line 99
    :goto_1
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    .line 104
    :goto_2
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mAlias:Ljava/lang/String;

    .line 107
    :cond_0
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-string/jumbo v0, "header"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mHeader:Ljava/lang/String;

    .line 110
    :cond_1
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_EventSection;->mTotal:I

    .line 111
    const-string/jumbo v0, "items_to_show"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 112
    const-string/jumbo v0, "items_to_show"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 114
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    .line 115
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_5

    .line 116
    iget-object v3, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 92
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    goto/16 :goto_0

    .line 97
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    goto :goto_1

    .line 102
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    goto :goto_2

    .line 119
    :cond_5
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    .line 79
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    .line 80
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mAlias:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mHeader:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_EventSection;->mTotal:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mEvents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mUsers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mBusinesses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lcom/yelp/android/serializable/_EventSection;->mTotal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventSection;->mItemsToShow:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 75
    return-void
.end method
