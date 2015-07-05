.class public Lcom/yelp/android/ui/activities/events/ak;
.super Lcom/yelp/android/services/q;
.source "EventShareFormatter.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/Event;

.field private b:Lcom/yelp/android/services/o;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/Event;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/services/q;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    .line 24
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3

    .prologue
    const v2, 0x7f070684

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    invoke-virtual {v0}, Lcom/yelp/android/services/o;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f07025b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 40
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const v1, 0x7f070255

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/yelp/android/analytics/h;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    .line 55
    const-string/jumbo v1, "event_alias"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventEmailCompose:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    .line 69
    :goto_0
    return-object v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventText:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    goto :goto_0

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    goto :goto_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    invoke-virtual {v1}, Lcom/yelp/android/services/o;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventTwitter:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    goto :goto_0

    .line 66
    :cond_3
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->EventShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 75
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/ak;->b:Lcom/yelp/android/services/o;

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/q;->a(Landroid/content/Context;Lcom/yelp/android/services/o;Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ak;->a:Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
