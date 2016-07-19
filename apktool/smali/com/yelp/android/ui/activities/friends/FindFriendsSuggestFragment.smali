.class public Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FindFriendsSuggestFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 57
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$1;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;

    return-object v0
.end method

.method public static a()Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/analytics/i;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/iris/KahunaEventIri;->FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/KahunaEventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/iris/KahunaEventIri;)V

    .line 54
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    check-cast p1, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment$a;

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    const v0, 0x7f0300cc

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    const v1, 0x7f0f031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v1, 0x7f0f031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-object v0
.end method
