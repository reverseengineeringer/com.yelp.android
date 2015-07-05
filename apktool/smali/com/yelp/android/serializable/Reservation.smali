.class public Lcom/yelp/android/serializable/Reservation;
.super Lcom/yelp/android/serializable/_Reservation;
.source "Reservation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_Reservation;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/yelp/android/serializable/cj;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cj;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Reservation;-><init>()V

    .line 25
    return-void
.end method

.method public static getDatestampForDisplay(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getDatestampForDisplay(Ljava/text/DateFormat;)Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 71
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 72
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/yelp/android/serializable/Reservation;)I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/Reservation;->mDatestamp:Ljava/util/Date;

    .line 115
    iget-object v1, p1, Lcom/yelp/android/serializable/Reservation;->mDatestamp:Ljava/util/Date;

    .line 116
    if-ne v0, v1, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 119
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 122
    :cond_1
    if-nez v0, :cond_2

    .line 123
    const/4 v0, -0x1

    goto :goto_0

    .line 125
    :cond_2
    if-nez v1, :cond_3

    .line 126
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "What does it mean? What does it mean?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Reservation;->compareTo(Lcom/yelp/android/serializable/Reservation;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 101
    instance-of v1, p1, Lcom/yelp/android/serializable/Reservation;

    if-nez v1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Reservation;

    .line 105
    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->mDatestamp:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->mDatestamp:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/Reservation;->mDatestamp:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->mConfirmationNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/Reservation;->mConfirmationNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAttributes()Ljava/util/List;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getAttributes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCancelString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getCancelString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getConfirmationNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getConfirmationSubtitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getConfirmationTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreditCardHold()Z
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getCreditCardHold()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDatestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getDatestamp()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPartySize()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getPartySize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getQueryId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSelectedTimeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getSelectedTimeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeId()I
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getTimeId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTransactionLockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getTransactionLockId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getViewTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->getViewTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasCreditCardHold()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Reservation;->getCreditCardHold()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/Reservation;->mTransactionLockId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Reservation;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Reservation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setConfirmationNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/serializable/Reservation;->mConfirmationNumber:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setPartySize(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/yelp/android/serializable/Reservation;->mPartySize:I

    .line 89
    return-void
.end method

.method public setQueryId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/yelp/android/serializable/Reservation;->mQueryId:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setTransactionLockId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/yelp/android/serializable/Reservation;->mTransactionLockId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Reservation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
