.class public Lcom/yelp/android/cj/k;
.super Ljava/lang/Object;
.source "UserLoginStatePreferenceViewInitializer.java"

# interfaces
.implements Lcom/yelp/android/cj/i;


# instance fields
.field private final a:Lcom/yelp/android/cj/i;

.field private final b:Lcom/yelp/android/appdata/webrequests/co;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/cj/k$1;

    invoke-direct {v1}, Lcom/yelp/android/cj/k$1;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cj/k;-><init>(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/cj/i;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/cj/i;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/yelp/android/cj/k;->a:Lcom/yelp/android/cj/i;

    .line 22
    iput-object p1, p0, Lcom/yelp/android/cj/k;->b:Lcom/yelp/android/appdata/webrequests/co;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/cj/k;->b:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/cj/k;->b:Lcom/yelp/android/appdata/webrequests/co;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/cj/k;->a:Lcom/yelp/android/cj/i;

    invoke-interface {v0, p1}, Lcom/yelp/android/cj/i;->a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V

    goto :goto_0
.end method
