.class Lcom/yelp/android/ui/activities/ad;
.super Ljava/lang/Object;
.source "ActivityConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfig;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfig;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ad;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ad;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ad;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-static {v1}, Lcom/yelp/android/debug/DebugUiGuidelinesActivity;->c(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->startActivity(Landroid/content/Intent;)V

    .line 400
    return-void
.end method
