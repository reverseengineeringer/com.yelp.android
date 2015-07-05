.class public Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "MoviesFragment.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/businesspage/cg;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Movie;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    const-string/jumbo v2, "movies"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 34
    const-string/jumbo v2, "biz_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v2, "theater_url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->a:Lcom/yelp/android/ui/activities/businesspage/cg;

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/activities/businesspage/cg;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Movie;

    .line 65
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->MovieClicked:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "title"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Movie;->getTicketingUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 67
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "movies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "biz_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->b:Ljava/lang/String;

    .line 45
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/cg;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/cg;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->a:Lcom/yelp/android/ui/activities/businesspage/cg;

    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ci;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ci;-><init>(Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;)V

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->a:Lcom/yelp/android/ui/activities/businesspage/cg;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/MoviesFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 60
    return-void
.end method
