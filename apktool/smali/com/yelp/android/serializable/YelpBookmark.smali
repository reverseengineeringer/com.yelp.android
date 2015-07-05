.class public Lcom/yelp/android/serializable/YelpBookmark;
.super Ljava/lang/Object;
.source "YelpBookmark.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field

.field public static LAZY_CREATOR:Lcom/yelp/android/serializable/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ba",
            "<",
            "Lcom/yelp/android/serializable/YelpBookmark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBusinessId:Ljava/lang/String;

.field private final mDateCreated:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/yelp/android/serializable/dv;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dv;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBookmark;->LAZY_CREATOR:Lcom/yelp/android/serializable/ba;

    .line 110
    new-instance v0, Lcom/yelp/android/serializable/dw;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dw;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBookmark;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 51
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time_created"

    invoke-static {p1, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/YelpBookmark;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/YelpBookmark;

    if-nez v2, :cond_3

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/YelpBookmark;

    .line 85
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 86
    iget-object v2, p1, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    iget-object v3, p1, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 64
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 68
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    const/16 v1, 0x20

    ushr-long v4, v2, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 70
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBookmark;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    return-void

    .line 106
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
