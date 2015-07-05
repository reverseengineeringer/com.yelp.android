.class Lcom/yelp/android/ui/activities/friends/a;
.super Ljava/lang/Object;
.source "ActivityFindFriends.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/a;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    .line 162
    if-nez p2, :cond_2

    invoke-static {p3}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/a;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "search_result_fragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    .line 168
    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->c()Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;

    move-result-object v0

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/a;->a:Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f0c014b

    const-string/jumbo v4, "search_result_fragment"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string/jumbo v3, "search_result_fragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 179
    :cond_1
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsSearchResultsFragment;->a(Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;)V

    .line 182
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
