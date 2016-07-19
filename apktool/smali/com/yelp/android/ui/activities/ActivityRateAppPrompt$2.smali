.class Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;
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
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->a(Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;)V

    .line 61
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AppRateRemind:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt$2;->a:Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityRateAppPrompt;->finish()V

    .line 63
    return-void
.end method
