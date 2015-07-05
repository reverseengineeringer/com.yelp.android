.class Lcom/yelp/android/ui/activities/friends/u;
.super Ljava/lang/Object;
.source "ReviewFriendRequest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/u;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/u;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/u;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->b(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Lcom/yelp/android/serializable/FriendRequest;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;->IGNORE:Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;Lcom/yelp/android/serializable/FriendRequest;Lcom/yelp/android/appdata/webrequests/FriendRequestAcknowledgment$Acknowledgment;)V

    .line 155
    return-void
.end method
