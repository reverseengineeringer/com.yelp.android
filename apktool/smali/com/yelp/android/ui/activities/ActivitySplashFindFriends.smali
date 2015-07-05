.class public Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySplashFindFriends.java"


# instance fields
.field a:Lcom/yelp/android/ui/widgets/SplashScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FriendFinderSplash:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 50
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->finish()V

    .line 54
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Lcom/yelp/android/ui/widgets/SplashScreen;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/SplashScreen;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    .line 24
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    const v1, 0x7f0702a1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTitleMessage(I)V

    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    const v1, 0x7f0706b9

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTopButtonText(I)V

    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    const v1, 0x7f0703ff

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setBottomButtonText(I)V

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setSubMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    new-instance v1, Lcom/yelp/android/ui/activities/dy;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/dy;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTopButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;->a:Lcom/yelp/android/ui/widgets/SplashScreen;

    new-instance v1, Lcom/yelp/android/ui/activities/dz;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/dz;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setBottomButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
