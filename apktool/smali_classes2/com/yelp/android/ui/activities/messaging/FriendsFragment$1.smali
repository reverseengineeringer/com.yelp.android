.class Lcom/yelp/android/ui/activities/messaging/FriendsFragment$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$1;->a:Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;->b()V

    .line 66
    return-void
.end method
