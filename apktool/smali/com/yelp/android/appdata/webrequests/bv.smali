.class public Lcom/yelp/android/appdata/webrequests/bv;
.super Lcom/yelp/android/av/g;
.source "EventRecordRsvpRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/EventRsvp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Event;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/EventRsvp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/event/rsvp/record"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 20
    const-string/jumbo v0, "event_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bv;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "event_type"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bv;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "freeform_response"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/bv;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    const-string/jumbo v0, "guest_names"

    invoke-static {p2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bv;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/EventRsvp;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/yelp/android/serializable/EventRsvp;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "rsvp"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/EventRsvp;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bv;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v0

    return-object v0
.end method
