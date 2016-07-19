.class public Lcom/yelp/android/ui/activities/messaging/FriendsFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;
    }
.end annotation


# instance fields
.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yelp/android/cl/a;

.field private k:Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->k:Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;

    return-object v0
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
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 28
    const-string/jumbo v1, "data_friends"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    new-instance v1, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;

    invoke-direct {v1}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;-><init>()V

    .line 30
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    return-object v1
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 88
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->j:Lcom/yelp/android/cl/a;

    invoke-virtual {v0, p3}, Lcom/yelp/android/cl/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 90
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->k:Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;->a(Lcom/yelp/android/serializable/User;)V

    .line 91
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$1;-><init>(Lcom/yelp/android/ui/activities/messaging/FriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0204b3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 78
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onAttach(Landroid/app/Activity;)V

    .line 38
    :try_start_0
    check-cast p1, Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->k:Lcom/yelp/android/ui/activities/messaging/FriendsFragment$a;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "The activity should implement the OnFriendClickedInterface"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->setRetainInstance(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "data_friends"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->i:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/yelp/android/cl/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/yelp/android/cl/a;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->j:Lcom/yelp/android/cl/a;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->j:Lcom/yelp/android/cl/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/FriendsFragment;->a(Landroid/widget/ListAdapter;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 83
    const v0, 0x7f0301f2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
