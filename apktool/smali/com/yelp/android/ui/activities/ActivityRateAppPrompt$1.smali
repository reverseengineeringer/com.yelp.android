.class Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;
.super Ljava/lang/Object;
.source "ActivityRateAppPrompt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 46
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AppRateRate:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->b(Z)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->startActivity(Landroid/content/Intent;)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$1;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    .line 53
    return-void
.end method
