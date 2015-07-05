.class Lcom/yelp/android/ui/activities/friends/q;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/q;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/q;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/cj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/cj;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/q;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_0
.end method
