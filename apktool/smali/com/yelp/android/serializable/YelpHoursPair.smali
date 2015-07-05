.class public Lcom/yelp/android/serializable/YelpHoursPair;
.super Lcom/yelp/android/serializable/_YelpHoursPair;
.source "YelpHoursPair.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation
.end field

.field public static LAZY_CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/YelpHoursPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/em;

    invoke-direct {v0}, Lcom/yelp/android/serializable/em;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/ah;

    .line 47
    sget-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->CREATOR:Lcom/yelp/android/serializable/ah;

    sput-object v0, Lcom/yelp/android/serializable/YelpHoursPair;->LAZY_CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;-><init>()V

    .line 16
    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;-><init>()V

    .line 19
    iput p1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    .line 20
    iput p2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p0, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpHoursPair;

    if-nez v2, :cond_3

    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpHoursPair;

    .line 70
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    iget v3, p1, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    iget v3, p1, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 74
    goto :goto_0
.end method

.method public bridge synthetic getClose()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->getClose()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOpen()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpHoursPair;->getOpen()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 51
    .line 53
    iget v0, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    add-int/lit8 v0, v0, 0x1f

    .line 54
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpHoursPair;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/4 v5, 0x7

    const/4 v4, 0x2

    .line 81
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "E hh:mma"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 83
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 84
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 85
    iget v2, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 88
    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 89
    iget v3, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    invoke-virtual {v1, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeJSON()Lorg/json/JSONArray;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 101
    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mOpen:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 102
    iget v1, p0, Lcom/yelp/android/serializable/YelpHoursPair;->mClose:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 103
    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpHoursPair;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
