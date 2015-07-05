.class public Lcom/yelp/android/ui/activities/messaging/FriendsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FriendsFragment.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/bb/a;

.field private c:Lcom/yelp/android/ui/activities/messaging/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 94
    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/messaging/FriendsFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)",
            "Lcom/yelp/android/ui/activities/messaging/FriendsFragment;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    const-string/jumbo v1, "data_friends"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 28
    new-instance v1, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)Lcom/yelp/android/ui/activities/messaging/x;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->c:Lcom/yelp/android/ui/activities/messaging/x;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/w;-><init>(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f020364

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 72
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/x;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->c:Lcom/yelp/android/ui/activities/messaging/x;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 39
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The activity should implement the OnFriendClickedInterface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->setRetainInstance(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data_friends"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Lcom/yelp/android/bb/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/yelp/android/bb/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->b:Lcom/yelp/android/bb/a;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->b:Lcom/yelp/android/bb/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0300c3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->b:Lcom/yelp/android/bb/a;

    invoke-virtual {v0, p3}, Lcom/yelp/android/bb/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->c:Lcom/yelp/android/ui/activities/messaging/x;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/messaging/x;->a(Lcom/yelp/android/serializable/User;)V

    .line 84
    return-void
.end method
