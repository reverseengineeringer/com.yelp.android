.class Lcom/yelp/android/ui/activities/friends/e;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/d;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/e;->a:Lcom/yelp/android/ui/activities/friends/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/e;->a:Lcom/yelp/android/ui/activities/friends/d;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/d;->b:Lcom/yelp/android/ui/activities/friends/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/e;->a:Lcom/yelp/android/ui/activities/friends/d;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/d;->b:Lcom/yelp/android/ui/activities/friends/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEnabled(Z)V

    .line 322
    return-void
.end method
