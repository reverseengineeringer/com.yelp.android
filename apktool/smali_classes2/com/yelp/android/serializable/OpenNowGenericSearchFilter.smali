.class public Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
.super Lcom/yelp/android/serializable/GenericSearchFilter;
.source "OpenNowGenericSearchFilter.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;Ljava/util/Calendar;Z)Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;
    .locals 4

    .prologue
    .line 46
    invoke-static {p0}, Lcom/yelp/android/util/d;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    .line 52
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/services/f;->d(Ljava/util/Calendar;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(I)V

    .line 56
    invoke-virtual {v0, p2}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->a(Z)V

    .line 57
    return-object v0
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    .line 126
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    .line 94
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 98
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 99
    const-string/jumbo v1, "params"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_0

    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    iput v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    .line 101
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    iget v1, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string/jumbo v2, "time"

    iget v3, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_3
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/GenericSearchFilter;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 69
    goto :goto_0

    .line 72
    :cond_4
    check-cast p1, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/yelp/android/serializable/GenericSearchFilter;->hashCode()I

    move-result v0

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/GenericSearchFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    iget v0, p0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void
.end method
