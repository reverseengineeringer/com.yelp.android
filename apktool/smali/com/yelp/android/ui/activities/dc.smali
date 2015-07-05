.class Lcom/yelp/android/ui/activities/dc;
.super Ljava/lang/Object;
.source "ActivityOnboardingSearch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

.field final synthetic b:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dc;->b:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/dc;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dc;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->getEventIri()Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dc;->b:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/dc;->b:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/dc;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/dc;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;->getCategory()Lcom/yelp/android/serializable/Category;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch;->startActivity(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
