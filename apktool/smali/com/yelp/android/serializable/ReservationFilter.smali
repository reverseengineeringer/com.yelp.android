.class public Lcom/yelp/android/serializable/ReservationFilter;
.super Lcom/yelp/android/serializable/_ReservationFilter;
.source "ReservationFilter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReservationFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/yelp/android/serializable/ReservationFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ReservationFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReservationFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationFilter;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p2, p1}, Lcom/yelp/android/serializable/_ReservationFilter;-><init>(Ljava/util/Date;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationFilter;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 78
    const-string/jumbo v1, "timestamp"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationFilter;->c()Lcom/yelp/android/serializable/ReservationFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 81
    :cond_0
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationFilter;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    .line 112
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReservationFilter;->a(Lorg/json/JSONObject;)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    invoke-static {v0}, Lcom/yelp/android/services/f;->b(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    .line 70
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/serializable/ReservationFilter;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/ReservationFilter;->a:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/serializable/ReservationFilter;
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v0

    .line 119
    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/yelp/android/services/f;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/yelp/android/serializable/ReservationFilter;

    iget v2, p0, Lcom/yelp/android/serializable/ReservationFilter;->b:I

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/serializable/ReservationFilter;-><init>(ILjava/util/Date;)V

    return-object v1
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationFilter;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationFilter;->e()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/ReservationFilter;

    if-nez v2, :cond_3

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/ReservationFilter;

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationFilter;->d()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReservationFilter;->e()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 57
    goto :goto_0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReservationFilter;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReservationFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
