.class Lcom/yelp/android/ui/activities/drawer/h;
.super Ljava/lang/Object;
.source "DrawerFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cu",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ImageView;->measure(II)V

    .line 195
    iget-object v8, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    new-instance v0, Lcom/yelp/android/ui/activities/drawer/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/DinoListView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->c(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->d(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    iget-object v5, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->e(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/h;

    move-result-object v7

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/ui/activities/drawer/a;-><init>(Lcom/yelp/android/DinoListView;Landroid/widget/ImageView;Landroid/view/View;Landroid/app/Activity;IILcom/yelp/android/ui/h;)V

    invoke-static {v8, v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->a(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;Lcom/yelp/android/ui/activities/drawer/a;)Lcom/yelp/android/ui/activities/drawer/a;

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->b(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/DinoListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/drawer/h;->a:Lcom/yelp/android/ui/activities/drawer/DrawerFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/drawer/DrawerFragment;->f(Lcom/yelp/android/ui/activities/drawer/DrawerFragment;)Lcom/yelp/android/ui/activities/drawer/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/DinoListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 199
    return-void
.end method
