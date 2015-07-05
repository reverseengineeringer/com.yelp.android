.class Lcom/yelp/android/ui/activities/friends/k;
.super Landroid/os/AsyncTask;
.source "FindFriendsFBContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/util/ContactsFetcher$Contact;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/yelp/android/ui/activities/friends/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/j;Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/k;->c:Lcom/yelp/android/ui/activities/friends/j;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/friends/k;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/friends/k;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/k;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 437
    invoke-static {}, Lcom/yelp/android/util/ContactsFetcher;->b()Lcom/yelp/android/util/ContactsFetcher;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/k;->c:Lcom/yelp/android/ui/activities/friends/j;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/util/ContactsFetcher;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 441
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 444
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/util/ContactsFetcher$Contact;

    .line 445
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/k;->c:Lcom/yelp/android/ui/activities/friends/j;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/util/ContactsFetcher$Contact;->getEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 452
    :cond_2
    return-object v4
.end method

.method protected a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/util/ContactsFetcher$Contact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/k;->c:Lcom/yelp/android/ui/activities/friends/j;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/friends/j;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/k;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 458
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 433
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friends/k;->a([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 433
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/friends/k;->a(Ljava/util/Map;)V

    return-void
.end method
