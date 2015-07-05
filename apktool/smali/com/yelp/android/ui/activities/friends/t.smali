.class Lcom/yelp/android/ui/activities/friends/t;
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
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/t;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/t;->a:Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;->a(Lcom/yelp/android/ui/activities/friends/ReviewFriendRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method
