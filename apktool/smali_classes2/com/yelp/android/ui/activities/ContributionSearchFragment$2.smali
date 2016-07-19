.class Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;
.super Ljava/lang/Object;
.source "ContributionSearchFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ContributionSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->LOCATION_SERVICES_DISABLED:Lcom/yelp/android/util/ErrorType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 368
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;->a:Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p_()V

    .line 373
    return-void
.end method
