.class Lcom/yelp/android/ui/activities/ai;
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
    .line 426
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ai;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ai;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ai;->a:Lcom/yelp/android/ui/activities/ActivityConfig;

    const-class v3, Lcom/yelp/android/ui/activities/ActivityDebugActivities;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfig;->startActivity(Landroid/content/Intent;)V

    .line 430
    return-void
.end method
