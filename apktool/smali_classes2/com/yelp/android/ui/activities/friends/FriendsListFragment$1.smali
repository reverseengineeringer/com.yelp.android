.class Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->a(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ap;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$1;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    goto :goto_0
.end method
