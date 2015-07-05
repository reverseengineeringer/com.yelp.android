.class public Lcom/yelp/android/ui/activities/ActivityEventUrlCatcher;
.super Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;
.source "ActivityEventUrlCatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpUrlCatcherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEventPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityEventUrlCatcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityEventUrlCatcher;->startActivity(Landroid/content/Intent;)V

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityEventUrlCatcher;->finish()V

    .line 28
    return-void
.end method
