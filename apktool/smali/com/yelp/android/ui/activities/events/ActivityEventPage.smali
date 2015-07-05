.class public Lcom/yelp/android/ui/activities/events/ActivityEventPage;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityEventPage.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEventPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const-string/jumbo v1, "extra_event_source"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/events/ActivityEventPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "extra_section_alias"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "tag_event_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/EventFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->wasLaunchedFromPushNotification()Z

    move-result v0

    .line 55
    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PushNotification:Lcom/yelp/android/analytics/iris/IriSource;

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 58
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-static {v1}, Lcom/yelp/android/serializable/Event$EventType;->getEventTypeFromUri(Landroid/net/Uri;)Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v3

    .line 60
    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    .line 61
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/analytics/o;

    invoke-direct {v2, v1}, Lcom/yelp/android/analytics/o;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 74
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    const-string/jumbo v3, "tag_event_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 78
    :cond_0
    return-void

    .line 55
    :cond_1
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Link:Lcom/yelp/android/analytics/iris/IriSource;

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_section_alias"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_event_source"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/analytics/iris/IriSource;

    .line 69
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/serializable/Event;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/analytics/iris/IriSource;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    goto :goto_1

    .line 71
    :cond_3
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/serializable/Event;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 83
    new-instance v0, Lcom/yelp/android/ui/activities/events/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->d()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/events/ak;-><init>(Lcom/yelp/android/serializable/Event;)V

    const v1, 0x7f070564

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/l;->a(Landroid/app/Activity;Lcom/yelp/android/services/q;I)Landroid/app/Dialog;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
