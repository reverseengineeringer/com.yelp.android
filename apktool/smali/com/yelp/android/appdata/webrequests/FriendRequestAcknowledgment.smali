.class public Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;
.super Lcom/yelp/android/av/h;
.source "FriendRequestAcknowledgment.java"


# instance fields
.field public final a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

.field public final b:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/av/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 36
    const-string/jumbo v0, "user_id"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->b:Lcom/yelp/android/serializable/User;

    .line 38
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    return-object v0
.end method

.method public b()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->b:Lcom/yelp/android/serializable/User;

    return-object v0
.end method
