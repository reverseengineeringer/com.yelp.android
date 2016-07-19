.class public Lcom/yelp/android/bv/a$b;
.super Lcom/yelp/android/bv/c;
.source "EventMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/bv/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "event/message/save"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/bv/c;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 29
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/bv/a$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string/jumbo v0, "text"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/bv/a$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "revision"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/bv/a$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
