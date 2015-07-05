.class final enum Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory$3;
.super Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;
.source "ActivityOnboardingSearch.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;)V
    .locals 6

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityOnboardingSearch$SearchCategory;-><init>(Ljava/lang/String;IILcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/ui/activities/dc;)V

    return-void
.end method


# virtual methods
.method public getCategory()Lcom/yelp/android/serializable/Category;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    const-string/jumbo v1, "coffee"

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method
