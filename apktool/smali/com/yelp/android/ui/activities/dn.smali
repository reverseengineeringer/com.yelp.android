.class Lcom/yelp/android/ui/activities/dn;
.super Ljava/lang/Object;
.source "ActivityRateAppPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/yelp/android/ui/activities/dn;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dn;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    .line 57
    sget-object v0, Lcom/yelp/android/analytics/iris/AutoIri;->AppRateRemind:Lcom/yelp/android/analytics/iris/AutoIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/dn;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    .line 59
    return-void
.end method
