.class Lcom/yelp/android/ui/activities/messaging/w;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/w;->a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/w;->a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)Lcom/yelp/android/ui/activities/messaging/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/x;->c()V

    .line 63
    return-void
.end method
