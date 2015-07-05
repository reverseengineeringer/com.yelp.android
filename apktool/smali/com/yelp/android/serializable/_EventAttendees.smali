.class abstract Lcom/yelp/android/serializable/_EventAttendees;
.super Ljava/lang/Object;
.source "_EventAttendees.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAttendeeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttendeesText:Ljava/lang/String;

.field protected mSectionCounts:[I

.field protected mSectionNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventAttendees;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeesText:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getAttendeeIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
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
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    return-object v0
.end method

.method public getAttendeesText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeesText:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionCounts()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    return-object v0
.end method

.method public getSectionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 75
    const-string/jumbo v0, "attendee_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "attendee_ids"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    .line 80
    :goto_0
    const-string/jumbo v0, "section_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    const-string/jumbo v0, "section_names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    .line 85
    :goto_1
    const-string/jumbo v0, "attendees"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    const-string/jumbo v0, "attendees"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    .line 90
    :goto_2
    const-string/jumbo v0, "attendees_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string/jumbo v0, "attendees_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeesText:Ljava/lang/String;

    .line 93
    :cond_0
    const-string/jumbo v0, "section_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 94
    const-string/jumbo v0, "section_counts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 96
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    .line 97
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_4

    .line 98
    iget-object v3, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 78
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    goto :goto_0

    .line 83
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    goto :goto_1

    .line 88
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    goto :goto_2

    .line 101
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeesText:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    .line 72
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeeIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendees:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mAttendeesText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventAttendees;->mSectionCounts:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 63
    return-void
.end method
