.class Lcom/yelp/android/ui/activities/friends/d;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/friends/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/c;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/d;->b:Lcom/yelp/android/ui/activities/friends/c;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/friends/d;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/d;->b:Lcom/yelp/android/ui/activities/friends/c;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/d;->b:Lcom/yelp/android/ui/activities/friends/c;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/d;->a:Landroid/view/View;

    new-instance v3, Lcom/yelp/android/ui/activities/friends/e;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/friends/e;-><init>(Lcom/yelp/android/ui/activities/friends/d;)V

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/cw;->a(Lcom/yelp/android/ui/util/au;Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method
