.class public Lcom/yelp/android/serializable/ExternalCheckIn;
.super Lcom/yelp/android/serializable/_ExternalCheckIn;
.source "ExternalCheckIn.java"

# interfaces
.implements Lcom/yelp/android/serializable/CheckIn;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/ExternalCheckIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/serializable/ExternalCheckIn$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ExternalCheckIn$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ExternalCheckIn;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/CheckIn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 55
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    sget-object v1, Lcom/yelp/android/serializable/YelpCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v1, v0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 63
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 65
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/ExternalCheckIn;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ExternalCheckIn;

    .line 66
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ExternalCheckIn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v1, v0, Lcom/yelp/android/serializable/ExternalCheckIn;->k:Lcom/yelp/android/serializable/YelpBusiness;

    .line 69
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_3
    return-object v4
.end method

.method public static a(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpCheckIn;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ExternalCheckIn;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ExternalCheckIn;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ExternalCheckIn;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ExternalCheckIn;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->e()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-ne p0, p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/ExternalCheckIn;

    if-nez v2, :cond_3

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/ExternalCheckIn;

    .line 108
    iget-object v2, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 109
    iget-object v2, p1, Lcom/yelp/android/serializable/_ExternalCheckIn;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_ExternalCheckIn;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 116
    iget-object v2, p1, Lcom/yelp/android/serializable/_ExternalCheckIn;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 117
    goto :goto_0

    .line 119
    :cond_6
    iget-object v2, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_ExternalCheckIn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    goto :goto_0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 89
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/ExternalCheckIn;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ExternalCheckIn;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
