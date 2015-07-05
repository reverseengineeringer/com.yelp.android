.class abstract Lcom/yelp/android/serializable/_EventRsvp;
.super Ljava/lang/Object;
.source "_EventRsvp.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mEventRsvpStatus:Ljava/lang/String;

.field protected mEventRsvpStatusText:Ljava/lang/String;

.field protected mFreeformQuestion:Ljava/lang/String;

.field protected mFreeformResponse:Ljava/lang/String;

.field protected mGuestsAllowed:I

.field protected mPartyPassImageUrl:Ljava/lang/String;

.field protected mUserGuests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserHasReplied:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventRsvp;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatusText:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformQuestion:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformResponse:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_EventRsvp;->mPartyPassImageUrl:Ljava/lang/String;

    .line 34
    iput-boolean p7, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserHasReplied:Z

    .line 35
    iput p8, p0, Lcom/yelp/android/serializable/_EventRsvp;->mGuestsAllowed:I

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getEventRsvpStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getEventRsvpStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatusText:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeformQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformQuestion:Ljava/lang/String;

    return-object v0
.end method

.method public getFreeformResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestsAllowed()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mGuestsAllowed:I

    return v0
.end method

.method public getPartyPassImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mPartyPassImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserGuests()Ljava/util/List;
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
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    return-object v0
.end method

.method public getUserHasReplied()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserHasReplied:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "user_guests"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    const-string/jumbo v0, "user_guests"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    .line 101
    :goto_0
    const-string/jumbo v0, "event_rsvp_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "event_rsvp_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    .line 104
    :cond_0
    const-string/jumbo v0, "event_rsvp_status_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "event_rsvp_status_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatusText:Ljava/lang/String;

    .line 107
    :cond_1
    const-string/jumbo v0, "freeform_question"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string/jumbo v0, "freeform_question"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformQuestion:Ljava/lang/String;

    .line 110
    :cond_2
    const-string/jumbo v0, "freeform_response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    const-string/jumbo v0, "freeform_response"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformResponse:Ljava/lang/String;

    .line 113
    :cond_3
    const-string/jumbo v0, "party_pass_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    const-string/jumbo v0, "party_pass_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mPartyPassImageUrl:Ljava/lang/String;

    .line 116
    :cond_4
    const-string/jumbo v0, "user_has_replied"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserHasReplied:Z

    .line 117
    const-string/jumbo v0, "guests_allowed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mGuestsAllowed:I

    .line 118
    return-void

    .line 99
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatusText:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformQuestion:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformResponse:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mPartyPassImageUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 91
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserHasReplied:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mGuestsAllowed:I

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserGuests:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mEventRsvpStatusText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformQuestion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mFreeformResponse:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mPartyPassImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_EventRsvp;->mUserHasReplied:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 80
    iget v0, p0, Lcom/yelp/android/serializable/_EventRsvp;->mGuestsAllowed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void
.end method
