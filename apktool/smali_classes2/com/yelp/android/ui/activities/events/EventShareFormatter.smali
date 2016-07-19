.class public Lcom/yelp/android/ui/activities/events/EventShareFormatter;
.super Lcom/yelp/android/services/ShareFormatter;
.source "EventShareFormatter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/services/ShareFormatter",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/ui/activities/events/EventShareFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/yelp/android/services/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/yelp/android/ui/activities/events/EventShareFormatter$1;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/events/EventShareFormatter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Event;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/yelp/android/services/ShareFormatter;-><init>(Landroid/os/Parcelable;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 65
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->a:Lcom/yelp/android/services/e$a;

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/services/ShareFormatter;->a(Landroid/content/Context;Lcom/yelp/android/services/e$a;Landroid/content/Intent;)V

    .line 68
    invoke-virtual {p2}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "android.intent.extra.SUBJECT"

    const v1, 0x7f070564

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    :cond_0
    return-void
.end method

.method public b()Lcom/yelp/android/analytics/g$a;
    .locals 3

    .prologue
    .line 44
    new-instance v1, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v1}, Lcom/yelp/android/analytics/g$a;-><init>()V

    .line 45
    const-string/jumbo v2, "event_alias"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->c()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->a:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventEmailCompose:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    .line 59
    :goto_0
    return-object v1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->a:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventText:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->a:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventFacebook:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventShareFormatter;->a:Lcom/yelp/android/services/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/services/e$a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventTwitter:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    goto :goto_0

    .line 56
    :cond_3
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EventShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v0}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    goto :goto_0
.end method
