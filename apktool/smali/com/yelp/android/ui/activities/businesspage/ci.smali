.class Lcom/yelp/android/ui/activities/businesspage/ci;
.super Ljava/lang/Object;
.source "MoviesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ci;->a:Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 52
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->MoreMovieShowtimesClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ci;->a:Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->a(Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ci;->a:Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "theater_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ci;->a:Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->startActivity(Landroid/content/Intent;)V

    .line 55
    return-void
.end method
