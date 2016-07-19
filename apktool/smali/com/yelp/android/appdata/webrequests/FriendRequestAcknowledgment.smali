.class public Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "FriendRequestAcknowledgment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
    }
.end annotation


# instance fields
.field public final a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

.field public final g:Lcom/yelp/android/serializable/User;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 37
    const-string/jumbo v0, "user_id"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->g:Lcom/yelp/android/serializable/User;

    .line 39
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    .line 40
    return-void
.end method


# virtual methods
.method public b()Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->a:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    return-object v0
.end method

.method public d()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment;->g:Lcom/yelp/android/serializable/User;

    return-object v0
.end method
