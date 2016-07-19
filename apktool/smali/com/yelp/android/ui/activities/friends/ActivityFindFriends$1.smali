.class Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;
.super Ljava/lang/Object;
.source "ActivityFindFriends.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 194
    if-nez p2, :cond_2

    invoke-static {p3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v2, "search_result_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    .line 201
    if-nez v0, :cond_0

    .line 202
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c()Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    move-result-object v0

    .line 206
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 207
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends$1;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)Landroid/support/v4/app/o;

    move-result-object v2

    const v3, 0x7f0f018a

    const-string/jumbo v4, "search_result_fragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/o;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v2

    const-string/jumbo v3, "search_result_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/o;->a()I

    .line 215
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;)V

    .line 217
    invoke-static {p1}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
