.class public Lcom/yelp/android/bv/a$a;
.super Lcom/yelp/android/bv/c;
.source "EventMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "event/messages/list"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/bv/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 13
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/bv/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    if-eqz p2, :cond_0

    .line 15
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/bv/a$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/bv/a$a;->a(Ljava/lang/String;I)V

    .line 18
    return-void
.end method
