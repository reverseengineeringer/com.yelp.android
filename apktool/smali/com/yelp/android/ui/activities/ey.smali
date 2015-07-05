.class Lcom/yelp/android/ui/activities/ey;
.super Ljava/lang/Object;
.source "ContributionSearchFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ey;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ey;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 339
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ey;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a_()V

    .line 344
    return-void
.end method
