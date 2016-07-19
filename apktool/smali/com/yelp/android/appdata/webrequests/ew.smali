.class public Lcom/yelp/android/appdata/webrequests/ew;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "UpdateGuestsRsvpRequest.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Event;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Event;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    const-string/jumbo v0, "event/rsvp/change_guests"

    invoke-direct {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 14
    const-string/jumbo v0, "event_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "event_type"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Event;->K()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v0, "guest_names"

    invoke-static {p2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method
