.class Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->d(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->a:Landroid/view/View;

    new-instance v3, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/util/av;->a(Lcom/yelp/android/ui/util/w;Landroid/widget/ListView;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 419
    return-void
.end method
