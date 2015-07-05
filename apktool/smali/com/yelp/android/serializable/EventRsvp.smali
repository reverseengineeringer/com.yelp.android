.class public Lcom/yelp/android/serializable/EventRsvp;
.super Lcom/yelp/android/serializable/_EventRsvp;
.source "EventRsvp.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/yelp/android/serializable/al;

    invoke-direct {v0}, Lcom/yelp/android/serializable/al;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/EventRsvp;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventRsvp;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getEventRsvpStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getEventRsvpStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEventRsvpStatusText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getEventRsvpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreeformQuestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getFreeformQuestion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFreeformResponse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getFreeformResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGuestsAllowed()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getGuestsAllowed()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPartyPassImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getPartyPassImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->values()[Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 67
    # getter for: Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->mEventStatus:Ljava/lang/String;
    invoke-static {v0}, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->access$000(Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/serializable/EventRsvp;->mEventRsvpStatus:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    :goto_1
    return-object v0

    .line 66
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;->Locked:Lcom/yelp/android/serializable/EventRsvp$RsvpStatus;

    goto :goto_1
.end method

.method public bridge synthetic getUserGuests()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getUserGuests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserHasReplied()Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventRsvp;->getUserHasReplied()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventRsvp;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventRsvp;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setUserGuests(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/serializable/EventRsvp;->mUserGuests:Ljava/util/List;

    .line 63
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_EventRsvp;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
