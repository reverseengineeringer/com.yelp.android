.class abstract Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;
.super Ljava/lang/Object;
.source "_FeedEventSubscriptionActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected a:Lcom/yelp/android/serializable/Event;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/yelp/android/serializable/User;

.field protected e:Lcom/yelp/android/serializable/User;

.field protected f:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    .line 120
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    .line 121
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    .line 122
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    .line 123
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    .line 124
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    .line 125
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/yelp/android/serializable/Event;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "event"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    .line 131
    :cond_0
    const-string/jumbo v0, "section_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    const-string/jumbo v0, "section_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    .line 134
    :cond_1
    const-string/jumbo v0, "subscription_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    const-string/jumbo v0, "subscription_status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    .line 137
    :cond_2
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    .line 140
    :cond_3
    const-string/jumbo v0, "event_created_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 141
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v1, "event_created_user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    .line 143
    :cond_4
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    .line 146
    :cond_5
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public c()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p1, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    if-ne p1, p0, :cond_2

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 57
    check-cast p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;

    .line 59
    new-instance v0, Lcom/yelp/android/dc/b;

    invoke-direct {v0}, Lcom/yelp/android/dc/b;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p1, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/dc/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/yelp/android/dc/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/b;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/dc/c;

    invoke-direct {v0}, Lcom/yelp/android/dc/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/dc/c;->a(Ljava/lang/Object;)Lcom/yelp/android/dc/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dc/c;->a()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->e:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_FeedEventSubscriptionActivity;->f:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    return-void
.end method
