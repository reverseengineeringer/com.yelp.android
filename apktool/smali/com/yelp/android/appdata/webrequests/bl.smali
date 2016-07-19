.class public Lcom/yelp/android/appdata/webrequests/bl;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "EventEnableReminderRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "event/reminder/enable"

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 9
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bl;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    const-string/jumbo v0, "EventEnableReminderRequest"

    return-object v0
.end method
