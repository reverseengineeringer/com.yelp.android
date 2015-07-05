.class Lcom/yelp/android/ui/activities/reviews/ai;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ai;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ai;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->c()V

    .line 364
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteNext:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 365
    const/4 v0, 0x1

    return v0
.end method
