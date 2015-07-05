.class final enum Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$2;
.super Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;
.source "MessagingRequestType.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType;-><init>(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/messaging/MessagingRequestType$1;)V

    return-void
.end method


# virtual methods
.method addParameter(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    const-string/jumbo v0, "newer_than"

    invoke-virtual {p1, v0, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
