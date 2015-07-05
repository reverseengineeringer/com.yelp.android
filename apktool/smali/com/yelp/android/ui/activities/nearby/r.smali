.class Lcom/yelp/android/ui/activities/nearby/r;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "ComboMapListActivity.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/r;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    .line 296
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 297
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/r;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/r;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(IZ)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/r;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/i;)V

    .line 303
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/r;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/h;)V

    .line 304
    return-object v0
.end method
