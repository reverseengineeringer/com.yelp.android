.class Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;
.super Landroid/support/v4/app/n;
.source "ComboMapListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;Landroid/support/v4/app/l;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    .line 303
    invoke-direct {p0, p2}, Landroid/support/v4/app/n;-><init>(Landroid/support/v4/app/l;)V

    .line 304
    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->c(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(IZ)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->b(Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;)Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$b;)V

    .line 310
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Lcom/yelp/android/ui/activities/nearby/ComboListFragment$a;)V

    .line 311
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity$c;->a:Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapListActivity;->g()I

    move-result v0

    return v0
.end method
