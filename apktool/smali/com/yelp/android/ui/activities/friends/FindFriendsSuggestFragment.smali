.class public Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "FindFriendsSuggestFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/friends/p;

.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/yelp/android/ui/activities/friends/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/friends/o;-><init>(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method

.method public static a()Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;-><init>()V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;)Lcom/yelp/android/ui/activities/friends/p;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a:Lcom/yelp/android/ui/activities/friends/p;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendFinderSelectSources:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onAttach(Landroid/app/Activity;)V

    .line 36
    check-cast p1, Lcom/yelp/android/ui/activities/friends/p;

    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->a:Lcom/yelp/android/ui/activities/friends/p;

    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 42
    const v0, 0x7f0300b2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    const v1, 0x7f0c02bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v1, 0x7f0c02bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/FindFriendsSuggestFragment;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-object v0
.end method
