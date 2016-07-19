.class Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1$1;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2$1;->b:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment$2;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEnabled(Z)V

    .line 417
    return-void
.end method
