.class public Lcom/yelp/android/serializable/SearchLocation;
.super Lcom/yelp/android/serializable/_SearchLocation;
.source "SearchLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/SearchLocation$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SearchLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/SearchLocation$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SearchLocation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SearchLocation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/SearchLocation$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/SearchLocation;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 37
    sget-object v3, Lcom/yelp/android/serializable/SearchLocation$Type;->TEXT:Lcom/yelp/android/serializable/SearchLocation$Type;

    move-object v1, p0

    move-object v2, p1

    move-wide v6, v4

    move-wide v8, v4

    move-wide v10, v4

    invoke-direct/range {v1 .. v11}, Lcom/yelp/android/serializable/_SearchLocation;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/SearchLocation$Type;DDDD)V

    .line 38
    return-void
.end method

.method public constructor <init>([D)V
    .locals 12

    .prologue
    .line 41
    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/serializable/SearchLocation$Type;->REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    const/4 v0, 0x1

    aget-wide v6, p1, v0

    const/4 v0, 0x2

    aget-wide v8, p1, v0

    const/4 v0, 0x3

    aget-wide v10, p1, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/yelp/android/serializable/_SearchLocation;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/SearchLocation$Type;DDDD)V

    .line 42
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/SearchRequest;)Lcom/yelp/android/serializable/SearchLocation;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-interface {p0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->I()[D

    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation;

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/SearchLocation;-><init>([D)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Lcom/yelp/android/serializable/SearchLocation;

    invoke-interface {p0}, Lcom/yelp/android/appdata/webrequests/SearchRequest;->F()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/SearchLocation;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/yelp/android/serializable/SearchLocation;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/SearchLocation;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    sget-object v2, Lcom/yelp/android/serializable/SearchLocation$Type;->REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

    if-ne v1, v2, :cond_1

    .line 80
    const-string/jumbo v1, "tl_lat"

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->c:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 81
    const-string/jumbo v1, "tl_long"

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->d:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 82
    const-string/jumbo v1, "br_lat"

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->e:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 83
    const-string/jumbo v1, "br_long"

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->f:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 85
    :cond_1
    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchLocation;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/eo;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    sget-object v1, Lcom/yelp/android/serializable/SearchLocation$Type;->REGION:Lcom/yelp/android/serializable/SearchLocation$Type;

    if-ne v0, v1, :cond_0

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->c:D

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->d:D

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->e:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/yelp/android/serializable/SearchLocation;->f:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    aput-wide v4, v0, v1

    const/4 v1, 0x5

    aput-wide v4, v0, v1

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a([D)Lcom/yelp/android/appdata/webrequests/eo;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchLocation;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/webrequests/eo;->a(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchLocation;->a(Lorg/json/JSONObject;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    sget-object v1, Lcom/yelp/android/serializable/SearchLocation$Type;->COORDINATE:Lcom/yelp/android/serializable/SearchLocation$Type;

    if-ne v0, v1, :cond_0

    .line 70
    sget-object v0, Lcom/yelp/android/serializable/SearchLocation$Type;->TEXT:Lcom/yelp/android/serializable/SearchLocation$Type;

    iput-object v0, p0, Lcom/yelp/android/serializable/SearchLocation;->b:Lcom/yelp/android/serializable/SearchLocation$Type;

    .line 72
    :cond_0
    return-void
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchLocation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SearchLocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_SearchLocation;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SearchLocation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
